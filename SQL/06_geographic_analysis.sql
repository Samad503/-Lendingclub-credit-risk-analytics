-- =========================================================
-- 06_geographic_analysis.sql
-- Geographic default-rate analysis by state and region
-- =========================================================

SELECT
    addr_state,
    COUNT(*) AS total_loans,
    ROUND(AVG(fico_score), 2) AS avg_fico,
    ROUND(100.0 * SUM(CASE WHEN loan_status IN ('Charged Off', 'Default', 'Late') THEN 1 ELSE 0 END) / COUNT(*), 2) AS default_rate
FROM loan_data
GROUP BY addr_state
ORDER BY default_rate DESC, total_loans DESC;

SELECT
    region,
    COUNT(*) AS total_loans,
    SUM(loan_amount) AS total_loan_amount,
    ROUND(100.0 * SUM(CASE WHEN loan_status IN ('Charged Off', 'Default', 'Late') THEN 1 ELSE 0 END) / COUNT(*), 2) AS default_rate
FROM loan_data
GROUP BY region
ORDER BY default_rate DESC;
