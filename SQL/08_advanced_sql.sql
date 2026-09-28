-- =========================================================
-- 08_advanced_sql.sql
-- Advanced SQL analysis and summary tables
-- =========================================================

WITH loan_summary AS (
    SELECT
        purpose,
        home_ownership,
        addr_state,
        fico_score,
        dti,
        loan_status,
        CASE
            WHEN loan_status IN ('Charged Off', 'Default', 'Late') THEN 1
            ELSE 0
        END AS default_flag
    FROM loan_data
)
SELECT
    purpose,
    home_ownership,
    COUNT(*) AS total_loans,
    ROUND(100.0 * SUM(default_flag) / COUNT(*), 2) AS default_rate,
    ROUND(AVG(fico_score), 2) AS avg_fico,
    ROUND(AVG(dti), 2) AS avg_dti
FROM loan_summary
GROUP BY purpose, home_ownership
ORDER BY default_rate DESC, total_loans DESC;

SELECT
    addr_state,
    purpose,
    COUNT(*) AS total_loans,
    ROUND(100.0 * SUM(CASE WHEN loan_status IN ('Charged Off', 'Default', 'Late') THEN 1 ELSE 0 END) / COUNT(*), 2) AS default_rate
FROM loan_data
GROUP BY addr_state, purpose
ORDER BY default_rate DESC;
