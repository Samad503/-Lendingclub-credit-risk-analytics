-- =========================================================
-- 03_default_analysis.sql
-- Default rate analysis by borrower and loan characteristics
-- =========================================================

WITH default_flags AS (
    SELECT
        *,
        CASE
            WHEN loan_status IN ('Charged Off', 'Default', 'Late') THEN 1
            ELSE 0
        END AS default_flag
    FROM loan_data
)
SELECT
    COUNT(*) AS total_loans,
    SUM(default_flag) AS default_loans,
    ROUND(100.0 * SUM(default_flag) / COUNT(*), 2) AS observed_default_rate
FROM default_flags;

SELECT
    fico_band,
    COUNT(*) AS total_loans,
    SUM(CASE WHEN loan_status IN ('Charged Off', 'Default', 'Late') THEN 1 ELSE 0 END) AS defaults,
    ROUND(100.0 * SUM(CASE WHEN loan_status IN ('Charged Off', 'Default', 'Late') THEN 1 ELSE 0 END) / COUNT(*), 2) AS default_rate
FROM loan_data
GROUP BY fico_band
ORDER BY fico_band;
