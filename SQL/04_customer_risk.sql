-- =========================================================
-- 04_customer_risk.sql
-- Risk profile by borrower characteristics
-- =========================================================

SELECT
    employment_length,
    COUNT(*) AS total_loans,
    ROUND(AVG(fico_score), 2) AS avg_fico,
    ROUND(AVG(dti), 2) AS avg_dti,
    ROUND(100.0 * SUM(CASE WHEN loan_status IN ('Charged Off', 'Default', 'Late') THEN 1 ELSE 0 END) / COUNT(*), 2) AS default_rate
FROM loan_data
GROUP BY employment_length
ORDER BY employment_length;

SELECT
    home_ownership,
    COUNT(*) AS total_loans,
    ROUND(100.0 * SUM(CASE WHEN loan_status IN ('Charged Off', 'Default', 'Late') THEN 1 ELSE 0 END) / COUNT(*), 2) AS default_rate
FROM loan_data
GROUP BY home_ownership
ORDER BY default_rate DESC;
