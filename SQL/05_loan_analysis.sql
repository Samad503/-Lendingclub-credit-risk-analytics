-- =========================================================
-- 05_loan_analysis.sql
-- Loan behavior by amount, purpose, and term
-- =========================================================

SELECT
    purpose,
    COUNT(*) AS total_loans,
    SUM(loan_amount) AS total_loan_amount,
    ROUND(AVG(loan_amount), 2) AS avg_loan_amount,
    ROUND(100.0 * SUM(CASE WHEN loan_status IN ('Charged Off', 'Default', 'Late') THEN 1 ELSE 0 END) / COUNT(*), 2) AS default_rate
FROM loan_data
GROUP BY purpose
ORDER BY total_loans DESC;

SELECT
    term,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_amount), 2) AS avg_loan_amount,
    ROUND(100.0 * SUM(CASE WHEN loan_status IN ('Charged Off', 'Default', 'Late') THEN 1 ELSE 0 END) / COUNT(*), 2) AS default_rate
FROM loan_data
GROUP BY term
ORDER BY term;
