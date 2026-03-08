-- =====================================
-- 1. Create Table
-- =====================================

CREATE TABLE claims_data (
    id SERIAL PRIMARY KEY,
    amount NUMERIC(12,2),
    severity NUMERIC(3,2),
    age NUMERIC(3,1),
    private_attorney SMALLINT,
    marital_status SMALLINT,
    specialty VARCHAR(100),
    insurance VARCHAR(50),
    gender VARCHAR(10)
);


-- =====================================
-- 2. Import Dataset
-- =====================================

\copy claims_data(amount, severity, age, private_attorney, marital_status, specialty, insurance, gender)
FROM 'data/medicalmalpractice.csv'
DELIMITER ','
CSV HEADER;


-- =====================================
-- 3. Data Preview
-- =====================================

SELECT *
FROM claims_data
LIMIT 3;


-- =====================================
-- 4. Data Quality Checks
-- =====================================

SELECT
    COUNT(*) FILTER (WHERE amount IS NULL) AS amount_nulls,
    COUNT(*) FILTER (WHERE severity IS NULL) AS severity_nulls,
    COUNT(*) FILTER (WHERE age IS NULL) AS age_nulls,
    COUNT(*) FILTER (WHERE private_attorney IS NULL) AS private_attorney_nulls,
    COUNT(*) FILTER (WHERE marital_status IS NULL) AS marital_status_nulls,
    COUNT(*) FILTER (WHERE specialty IS NULL) AS specialty_nulls,
    COUNT(*) FILTER (WHERE insurance IS NULL) AS insurance_nulls,
    COUNT(*) FILTER (WHERE gender IS NULL) AS gender_nulls
FROM claims_data;


-- =====================================
-- 5. Exploratory Analysis
-- =====================================

-- Claims by Insurance Provider

SELECT insurance,
       COUNT(*) AS claim_count
FROM claims_data
GROUP BY insurance
ORDER BY claim_count DESC;


-- Claim Amount Statistics by Attorney Involvement

SELECT private_attorney,
       COUNT(*) AS total_claims,
       ROUND(AVG(amount), 2) AS avg_claim_amount,
       ROUND(MIN(amount), 2) AS min_claim_amount,
       ROUND(MAX(amount), 2) AS max_claim_amount
FROM claims_data
GROUP BY private_attorney
ORDER BY private_attorney;


-- High-Value Claims (>$100k) by Attorney Involvement

SELECT private_attorney,
       COUNT(*) AS total_claims,
       COUNT(CASE WHEN amount > 100000 THEN 1 END) AS high_claims,
       ROUND(100.0 * COUNT(CASE WHEN amount > 100000 THEN 1 END) / COUNT(*), 2)
       AS high_claim_percentage
FROM claims_data
GROUP BY private_attorney
ORDER BY private_attorney;


-- Average Severity by Gender

SELECT gender,
       ROUND(AVG(severity), 2) AS avg_severity
FROM claims_data
GROUP BY gender
ORDER BY gender;


-- High-Value Claims by Insurance Provider

SELECT insurance,
       COUNT(*) AS total_claims,
       COUNT(CASE WHEN amount > 100000 THEN 1 END) AS high_claims,
       ROUND(100.0 * COUNT(CASE WHEN amount > 100000 THEN 1 END) / COUNT(*), 2)
       AS high_claim_percentage
FROM claims_data
GROUP BY insurance
ORDER BY insurance;


-- =====================================
-- 6. Demographic Analysis
-- =====================================

-- Severity by Age Group

SELECT 
    CASE 
        WHEN age BETWEEN 18 AND 29 THEN '18-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        WHEN age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60+'
    END AS age_group,
    ROUND(AVG(severity), 2) AS avg_severity
FROM claims_data
GROUP BY age_group
ORDER BY age_group;


-- Claim Cost by Attorney Involvement

SELECT private_attorney,
       ROUND(AVG(amount), 2) AS avg_amount,
       ROUND(AVG(severity), 2) AS avg_severity
FROM claims_data
GROUP BY private_attorney
ORDER BY private_attorney;


-- =====================================
-- 7. Claim Severity Analysis
-- =====================================

SELECT severity,
       COUNT(*) AS claim_count,
       ROUND(AVG(amount), 2) AS avg_cost,
       ROUND(SUM(amount), 2) AS total_cost
FROM claims_data
GROUP BY severity
ORDER BY severity DESC;


-- =====================================
-- 8. Specialty Risk Analysis
-- =====================================

-- Top Specialties by Total Malpractice Cost

SELECT specialty,
       COUNT(*) AS claim_count,
       ROUND(AVG(amount), 2) AS avg_cost,
       ROUND(SUM(amount), 2) AS total_cost,
       ROUND(AVG(severity), 2) AS avg_severity
FROM claims_data
GROUP BY specialty
ORDER BY total_cost DESC
LIMIT 3;


-- Specialty Cost vs Claim Share

SELECT *,
       ROUND(pct_of_total_cost - pct_of_claims, 2) AS cost_claim_gap
FROM (
    SELECT specialty,
           COUNT(*) AS claim_count,
           ROUND(SUM(amount), 2) AS total_cost,
           ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_claims,
           ROUND(SUM(amount) * 100.0 / SUM(SUM(amount)) OVER (), 2) AS pct_of_total_cost
    FROM claims_data
    GROUP BY specialty
) sub
ORDER BY cost_claim_gap DESC
LIMIT 3;


-- =====================================
-- 9. Attorney Involvement Analysis
-- =====================================

SELECT gender,
       attorney_status,
       COUNT(*) AS claim_count,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_claims,
       ROUND(SUM(amount) * 100.0 / SUM(SUM(amount)) OVER (), 2) AS pct_of_total_cost,
       ROUND(AVG(amount), 2) AS avg_cost,
       ROUND(SUM(amount), 2) AS total_cost,
       ROUND(AVG(severity), 2) AS avg_severity
FROM (
    SELECT *,
           CASE 
               WHEN private_attorney = 1 THEN 'With Attorney'
               ELSE 'Without Attorney'
           END AS attorney_status
    FROM claims_data
) t
GROUP BY gender, attorney_status
ORDER BY total_cost DESC;


-- =====================================
-- 10. Marital Status Analysis
-- =====================================

SELECT gender,
       marital_status,
       COUNT(*) AS claim_count,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_claims,
       ROUND(SUM(amount) * 100.0 / SUM(SUM(amount)) OVER (), 2) AS pct_of_total_cost,
       ROUND(AVG(amount), 2) AS avg_cost,
       ROUND(SUM(amount), 2) AS total_cost,
       ROUND(AVG(severity), 2) AS avg_severity
FROM (
    SELECT
        gender,
        amount,
        severity,
        CASE marital_status
            WHEN 0 THEN 'Divorced'
            WHEN 1 THEN 'Single'
            WHEN 2 THEN 'Married'
            WHEN 3 THEN 'Widowed'
            ELSE 'Unknown'
        END AS marital_status
    FROM claims_data
) t
GROUP BY gender, marital_status
ORDER BY total_cost DESC;


-- =====================================
-- 11. Ranking High-Risk Specialties
-- =====================================

SELECT specialty,
       COUNT(*) AS claim_count,
       ROUND(AVG(amount), 2) AS avg_cost,
       ROUND(SUM(amount), 2) AS total_cost,
       RANK() OVER (ORDER BY SUM(amount) DESC) AS cost_rank
FROM claims_data
GROUP BY specialty
ORDER BY total_cost DESC
LIMIT 5;
