# 🏥 Medical Malpractice Claims Analysis

[![SQL / PostgreSQL](https://img.shields.io/badge/Skill-SQL%20%2F%20PostgreSQL-blue?style=flat-square&logo=postgresql&logoColor=white)](https://www.postgresql.org/)  
[![Data Analysis](https://img.shields.io/badge/Skill-Data%20Analysis-green?style=flat-square&logo=tableau&logoColor=white)](https://www.tableau.com/)  
[![SQL Queries](https://img.shields.io/badge/Skill-SQL%20Queries-orange?style=flat-square&logo=postgresql&logoColor=white)](https://www.postgresql.org/docs/current/sql.html)

---

## 🌟 Project Overview
This project analyzes medical malpractice claims data to identify patterns in claim severity, payout amounts, medical specialties, insurance type, and legal representation.
The objective is to generate healthcare cost and risk insights relevant to healthcare organizations, insurers, and policy-oriented stakeholders.

---

## 🎯 Project Goals

Dataset Setup: Create claims_data table and import medicalmalpractice.csv for structured analysis.
Data Quality: Identify and assess missing or inconsistent values across all variables.
Descriptive Analysis: Analyze claim distributions by insurance type, specialty, and gender; calculate average, minimum, maximum, and high-value claims; assess severity patterns.
Demographic Insights: Evaluate trends across age groups, marital status, gender, and attorney representation.
Specialty Financial Analysis: Identify specialties with highest total and average claim costs; examine cost distribution across medical fields.
Aggregated Insights: Produce summary tables to support interpretation of healthcare cost and risk drivers.

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
