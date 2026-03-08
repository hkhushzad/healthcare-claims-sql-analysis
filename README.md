Healthcare Malpractice Claims Analysis (SQL)
Project Overview
This project analyzes healthcare malpractice claims to identify key drivers of claim costs and severity. Using SQL, the analysis explores how factors such as attorney involvement, medical specialty, demographics, and claim severity influence malpractice payouts.
The goal of this project is to demonstrate data analysis using SQL, including:
Data cleaning
Exploratory data analysis
Data segmentation
Business insight generation

Dataset
Source: Medical Malpractice Claims Dataset from Kaggle.
The dataset contains approximately 79,000 malpractice claims with the following variables:

| Column           | Description                                       |
| ---------------- | ------------------------------------------------- |
| amount           | Claim payout amount                               |
| severity         | Severity level of the claim                       |
| age              | Age of the claimant                               |
| private_attorney | Indicates whether a private attorney was involved |
| marital_status   | Marital status of the claimant                    |
| specialty        | Medical specialty involved in the claim           |
| insurance        | Insurance provider                                |
| gender           | Gender of the claimant                            |

Tools & Skills Demonstrated
SQL (PostgreSQL)
Data cleaning and validation
Aggregations and grouping
Window functions
Conditional logic (CASE statements)
Business-focused data analysis

healthcare-claims-sql-analysis
│
├── data
│   └── medicalmalpractice.csv
│
├── sql
│   ├── 01_create_table.sql
│   ├── 02_load_data.sql
│   └── 03_analysis.sql
│
└── README.md
