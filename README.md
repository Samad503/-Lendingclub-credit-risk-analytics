# LendingClub Credit Risk & Loan Portfolio Analytics

A data-driven credit risk analysis project built around LendingClub loan performance data. The project combines Python-based exploration, SQL-based risk analysis, and a Power BI dashboard to understand how borrower and loan characteristics relate to observed default behavior.

## Overview

This project analyzes more than 1.35 million LendingClub loan records to study:

- FICO score behavior
- Debt-to-income (DTI) patterns
- Annual income trends
- Loan amount distribution
- Employment length effects
- Loan purpose differences
- Home ownership influence
- Geographic variation in portfolio risk

The goal is to uncover patterns in default rates and translate them into actionable portfolio insights.

## Business Problem

LendingClub loan performance varies by borrower profile and loan characteristics. The project examines how observed default rates differ across key dimensions, helping answer questions such as:

- Which borrower segments carry higher default risk?
- How do DTI and FICO influence outcome risk?
- Which loan purposes are riskier?
- How does risk vary by state or region?

## Tools and Technologies

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

## Workflow

1. Clean and prepare the LendingClub dataset.
2. Perform exploratory data analysis in Python.
3. Assess data quality, missing values, duplicates, and outliers.
4. Use SQL to analyze portfolio trends and default behavior.
5. Segment borrowers by credit and debt characteristics.
6. Build an interactive Power BI dashboard.
7. Summarize findings into business-friendly credit risk insights.

## Dataset

The analysis uses a large LendingClub loan dataset containing more than 1.35 million records. The full dataset is not included in this repository due to size limitations.

## Dashboard Highlights

### Portfolio Overview

- Total loans
- Total loan amount
- Overall default rate
- Average FICO score
- Average DTI
- Monthly loan volume
- Default rate by loan purpose
- Default rate by DTI category
- Default rate by FICO category
- Loan distribution by purpose

### Credit Risk Analysis

- Default rate by FICO category
- Default rate by DTI category
- Default rate by employment length
- Default rate by home ownership
- Top states by default rate
- Geographic loan portfolio analysis
- Interactive filters for home ownership, purpose, and year

## Key Findings

The analysis highlights meaningful differences in observed default rates across borrower and loan segments. Some recurring patterns include:

- Higher-risk behavior appears in certain FICO bands.
- Borrowers with higher DTI levels show weaker performance in aggregate.
- Default rates vary across loan purpose and home-ownership groups.
- State-level differences suggest geographic variation in portfolio risk.

These findings reflect observed relationships in the dataset and should not be interpreted as causal proof.

## Repository Structure

```text
LendingClub-Credit-Risk-Analytics/
├── README.md
├── requirements.txt
├── .gitignore
├── Cleaned data/
│   └── cleaned_loans_data.csv
├── Dashboard/
│   └── Financial Risk Modeling.pbix
├── Notebooks/
│   └── EDA.ipynb
├── SQL/
│   ├── 01_data_quality.sql
│   ├── 02_portfolio_overview.sql
│   ├── 03_default_analysis.sql
│   ├── 04_customer_risk.sql
│   ├── 05_loan_analysis.sql
│   ├── 06_geographic_analysis.sql
│   ├── 07_risk_segmentation.sql
│   └── 08_advanced_sql.sql
├── ScreenShots/
│   ├── Screenshot 2026-09-23 153542.png
│   └── Screenshot 2026-09-26 162750.png
└── .gitignore
```

## Getting Started

### 1. Install Python dependencies

```bash
pip install -r requirements.txt
```

### 2. Run the notebook

Open the notebook in the Notebooks folder and update the dataset path if necessary before running the analysis.

### 3. Run the SQL scripts

Load the cleaned dataset into PostgreSQL and execute the scripts in the SQL folder in order.

### 4. Open the dashboard

Open the Power BI file in the Dashboard folder and refresh the data source if needed.

## Disclaimer

This project is intended for educational and portfolio purposes. It identifies patterns and associations in historical lending data and is not a production credit-scoring or lending-decision system.

## License

This project is provided as-is for learning and demonstration purposes.
