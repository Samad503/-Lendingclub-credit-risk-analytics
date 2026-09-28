-- =========================================================
-- 01_data_quality.sql
-- LendingClub loan data quality checks
-- =========================================================

-- Replace loan_data with the actual table name in your PostgreSQL database.
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT id) AS unique_ids,
    COUNT(*) FILTER (WHERE loan_status IS NULL) AS missing_loan_status,
    COUNT(*) FILTER (WHERE fico_score IS NULL) AS missing_fico_score,
    COUNT(*) FILTER (WHERE annual_income IS NULL) AS missing_annual_income,
    COUNT(*) FILTER (WHERE loan_amount IS NULL) AS missing_loan_amount,
    COUNT(*) FILTER (WHERE dti IS NULL) AS missing_dti
FROM loan_data;

SELECT
    loan_status,
    COUNT(*) AS record_count
FROM loan_data
GROUP BY loan_status
ORDER BY record_count DESC;
