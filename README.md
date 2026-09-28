# LendingClub Credit Risk & Loan Portfolio Analytics

## Project Overview

End-to-end credit risk analytics project analyzing 1.35M+ LendingClub loan records using Python, SQL, PostgreSQL, and Power BI.

The project explores borrower and loan characteristics associated with different observed default rates and turns the analysis into an interactive Power BI dashboard.

## Business Problem

The goal is to understand how observed loan default rates vary across important borrower and loan characteristics, including:

- FICO score
- Debt-to-income (DTI) ratio
- Annual income
- Loan amount
- Employment length
- Loan purpose
- Home ownership
- Geographic location

## Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- PostgreSQL
- SQL
- Power BI
- DAX
- Power Query
- Git/GitHub

## Project Workflow

1. Cleaned the LendingClub loan dataset.
2. Performed exploratory data analysis in Python.
3. Investigated missing values, duplicates, distributions, outliers, and data-quality issues.
4. Used PostgreSQL and SQL for portfolio and default-rate analysis.
5. Created borrower and loan risk segments using SQL and DAX.
6. Built an interactive Power BI dashboard.
7. Analyzed observed default-rate differences across credit, borrower, loan, and geographic characteristics.

## Dataset

The analysis uses more than 1.35 million LendingClub loan records.

The full dataset is not included in this repository because of its size.

## Dashboard

### Portfolio Overview

- Total loans
- Total loan amount
- Overall default rate
- Average FICO
- Average DTI
- Monthly loan volume
- Default rate by loan purpose
- Default rate by DTI category
- Default rate by FICO category
- Loan portfolio distribution by purpose

### Credit Risk Analysis

- Default rate by FICO category
- Default rate by DTI category
- Default rate by employment length
- Default rate by home ownership
- Top states by observed default rate
- Geographic loan portfolio analysis
- Interactive filters for home ownership, purpose, and year

## Key Findings

The analysis shows meaningful differences in observed default rates across borrower and loan segments.

Examples include:

- Default rates vary across FICO categories.
- Higher DTI categories show higher observed default rates in the analyzed portfolio.
- Default rates differ across loan purposes and home-ownership categories.
- Geographic differences can be explored through state-level portfolio and default-rate analysis.

These findings describe relationships observed in the dataset and should not be interpreted as proof of causation.

## Project Structure

```text
lendingclub-credit-risk-analytics/
│
├── README.md
├── requirements.txt
├── .gitignore
│
├── notebooks/
│   └── lendingclub_eda.ipynb
│
├── sql/
│   ├── 01_data_quality.sql
│   ├── 02_portfolio_overview.sql
│   ├── 03_default_analysis.sql
│   ├── 04_customer_risk.sql
│   ├── 05_loan_analysis.sql
│   ├── 06_geographic_analysis.sql
│   ├── 07_risk_segmentation.sql
│   └── 08_advanced_sql.sql
│
├── powerbi/
│   └── LendingClub_Credit_Risk.pbix
│
├── screenshots/
│   ├── portfolio_overview.png
│   └── credit_risk_analysis.png
│
└── data/
    └── sample_loans.csv
```

## How to Run

### Python

```bash
pip install -r requirements.txt
```

Open `notebooks/lendingclub_eda.ipynb`, update the dataset path if necessary, and run the notebook.

### SQL

Load the dataset into PostgreSQL and run the SQL scripts in the `sql/` directory.

### Power BI

Open `powerbi/LendingClub_Credit_Risk.pbix`, update the data source if necessary, and refresh the model.

## Disclaimer

This project is for educational and portfolio purposes. The analysis identifies patterns and associations in the historical dataset and is not a production credit-scoring or lending-decision system.
