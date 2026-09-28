-- =========================================================
-- 02_portfolio_overview.sql
-- Portfolio summary and loan distribution by year
-- =========================================================

SELECT
    COUNT(*) AS total_loans,
    SUM(loan_amount) AS total_loan_amount,
    ROUND(AVG(loan_amount), 2) AS avg_loan_amount,
    ROUND(AVG(annual_income), 2) AS avg_annual_income,
    ROUND(AVG(fico_score), 2) AS avg_fico,
    ROUND(AVG(dti), 2) AS avg_dti
FROM loan_data;

SELECT
    EXTRACT(YEAR FROM issue_date) AS loan_year,
    COUNT(*) AS total_loans,
    SUM(loan_amount) AS total_loan_amount,
    ROUND(AVG(loan_amount), 2) AS avg_loan_amount
FROM loan_data
GROUP BY EXTRACT(YEAR FROM issue_date)
ORDER BY loan_year;
