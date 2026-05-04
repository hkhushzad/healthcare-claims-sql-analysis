# 🏥 Medical Malpractice Claims Analysis

[![SQL / PostgreSQL](https://img.shields.io/badge/Skill-SQL%20%2F%20PostgreSQL-blue?style=flat-square&logo=postgresql&logoColor=white)](https://www.postgresql.org/)  
[![Data Analysis](https://img.shields.io/badge/Skill-Data%20Analysis-green?style=flat-square&logo=tableau&logoColor=white)](https://www.tableau.com/)  
[![SQL Queries](https://img.shields.io/badge/Skill-SQL%20Queries-orange?style=flat-square&logo=postgresql&logoColor=white)](https://www.postgresql.org/docs/current/sql.html)

---

## 🌟 Project Overview
- Conducts structured analysis of medical malpractice claims data to evaluate patterns in claim severity, payout distributions,
  medical specialties, insurance types, and legal representation

- Focuses on identifying key drivers of healthcare cost variation and risk exposure across clinical and demographic factors

- Translates raw claims data into actionable insights on healthcare cost behavior and system-level risk trends
- Supports interpretation of findings relevant to healthcare financing, insurance operations, and policy-oriented decision-making

---
## 🎯 Analytical Approach

- Established analytical dataset by creating the `claims_data` table and importing `medicalmalpractice.csv` for structured evaluation  

- Performed data quality assessment to identify and evaluate missing or inconsistent values across all variables  

- Conducted descriptive statistical analysis to examine claim distributions by insurance type, medical specialty, and gender, including average, minimum, maximum, and high-value claims  

- Evaluated demographic patterns across age groups, marital status, gender, and attorney representation to identify variation in claim outcomes  

- Performed specialty-level financial analysis to identify high-cost medical fields based on total and average claim amounts  

- Developed aggregated summary tables to support interpretation of healthcare cost drivers and risk distribution patterns  

---

## 💻 Skills Demonstrated

SQL & Data Analysis: Data querying, aggregation, and statistical summaries
Data Cleaning & Validation: Identification and handling of missing or inconsistent data
Healthcare Data Interpretation: Analysis of cost, risk, and utilization patterns
Workflow Organization: Structured, reproducible analysis using version control (GitHub)
Reporting & Insight Generation: Translating raw data into meaningful healthcare insights

---

## 📊 Dataset Columns

| Column           | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| Amount           | Amount of the claim payment in dollars                                      |
| Severity         | The severity rating of damage to the patient, from 1 (emotional trauma) to 9 (death) |
| Age              | Age of the claimant in years                                                |
| Private Attorney | Whether the claimant was represented by a private attorney                 |
| Marital Status   | Marital status of the claimant                                              |
| Specialty        | Specialty of the physician involved in the lawsuit                          |
| Insurance        | Type of medical insurance carried by the patient                            |
| Gender           | Patient gender                                                              |

---

```text
medical-malpractice-sql-analysis
│
├── data
│   ├── medicalmalpractice.csv        # Dataset of medical malpractice claims
│   └── .gitkeep                      # Placeholder for folder structure
├── medical_malpractice_claims_analysis.sql   # SQL queries & analysis
└── README.md                         # Project documentation
