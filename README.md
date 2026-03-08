# 🏥 Medical Malpractice Claims Analysis

[![GitHub Repo Size](https://img.shields.io/github/repo-size/hkhushzad/medical-malpractice-sql-analysis?style=flat-square)](https://github.com/hkhushzad/medical-malpractice-sql-analysis)
[![License](https://img.shields.io/github/license/hkhushzad/medical-malpractice-sql-analysis?style=flat-square)](https://github.com/hkhushzad/medical-malpractice-sql-analysis/blob/main/LICENSE)
[![SQL](https://img.shields.io/badge/Skill-SQL-blue?style=flat-square&logo=postgresql&logoColor=white)](https://www.postgresql.org/)

---

## 🌟 Project Overview
This project analyzes **medical malpractice claims data** to uncover trends in **claim amounts, medical specialties, and the influence of private attorneys**.  
The goal is to provide **actionable insights** for healthcare organizations, insurance providers, and legal professionals.

---

## 🎯 Project Goals

- **Dataset Setup:** Create `claims_data` table and import `medicalmalpractice.csv`.  
- **Data Quality:** Check for missing values in all columns.  
- **Descriptive Analysis:** Summarize claims by insurance, specialty, gender; calculate avg/min/max amounts and high-value claims; compute average severity.  
- **Demographic Insights:** Examine attorney involvement, age groups, marital status, and gender differences.  
- **Specialty Financials:** Identify top specialties by total and average claim costs; analyze cost vs. claim distribution.  
- **Aggregated Insights:** Provide summary tables for actionable insights across demographics, insurance, specialty, and attorney involvement.

---

## 💻 Skills Demonstrated
- **SQL & Data Analysis:** Data cleaning, aggregation, and advanced queries  
- **Data Management:** Proper dataset organization and reproducible workflow  
- **Professional GitHub Workflow:** Version control, commits, and documentation  
- **Data Interpretation:** Summarizing results for actionable business insights

---

## 📊 Dataset Columns
| Column           | Description                                                         |
| ---------------- | ------------------------------------------------------------------- |
| amount           | Claim amount in USD                                                 |
| severity         | Severity of the claim (numeric scale)                               |
| age              | Age of the physician or involved party                              |
| private_attorney | 1 = Yes, 0 = No                                                     |
| marital_status   | Marital status: 0 = Divorced, 1 = Single, 2 = Married, 3 = Widowed, 4 = Unknown |
| specialty        | Medical specialty of the physician                                  |
| insurance        | Type of insurance coverage                                          |
| gender           | Gender of the physician                                             |

---

## ⚡ How to Run the SQL File

```text
Open your SQL tool (PostgreSQL, DBeaver, pgAdmin, or similar)
Open the SQL file `medical_malpractice_claims_analysis.sql`
Run the script — it will:
- Create the `claims_data` table
- Import the CSV from `data/medicalmalpractice.csv`
- Generate summary tables and insights

No additional configuration is needed — just open and run the file to see the results.

---

## medical-malpractice-sql-analysis
│
├── data
│   ├── medicalmalpractice.csv        # Dataset of medical malpractice claims
│   └── .gitkeep                      # Placeholder for folder structure
├── medical_malpractice_claims_analysis.sql   # SQL queries & analysis
└── README.md                         # Project documentation
