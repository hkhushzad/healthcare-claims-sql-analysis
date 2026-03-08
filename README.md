# 🏥 Medical Malpractice Claims Analysis

[![SQL / PostgreSQL](https://img.shields.io/badge/Skill-SQL%20%2F%20PostgreSQL-blue?style=flat-square&logo=postgresql&logoColor=white)](https://www.postgresql.org/)  
[![Data Analysis](https://img.shields.io/badge/Skill-Data%20Analysis-green?style=flat-square&logo=tableau&logoColor=white)](https://www.tableau.com/)  
[![SQL Queries](https://img.shields.io/badge/Skill-SQL%20Queries-orange?style=flat-square&logo=postgresql&logoColor=white)](https://www.postgresql.org/docs/current/sql.html)

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
