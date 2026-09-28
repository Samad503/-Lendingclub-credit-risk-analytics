-- =========================================================
-- 07_risk_segmentation.sql
-- Segment borrowers by credit and debt metrics
-- =========================================================

SELECT
    CASE
        WHEN fico_score >= 760 THEN 'Excellent'
        WHEN fico_score >= 700 THEN 'Good'
        WHEN fico_score >= 660 THEN 'Fair'
        ELSE 'Poor'
    END AS fico_segment,
    COUNT(*) AS total_loans,
    ROUND(100.0 * SUM(CASE WHEN loan_status IN ('Charged Off', 'Default', 'Late') THEN 1 ELSE 0 END) / COUNT(*), 2) AS default_rate
FROM loan_data
GROUP BY CASE
    WHEN fico_score >= 760 THEN 'Excellent'
    WHEN fico_score >= 700 THEN 'Good'
    WHEN fico_score >= 660 THEN 'Fair'
    ELSE 'Poor'
END
ORDER BY
    CASE fico_segment
        WHEN 'Excellent' THEN 1
        WHEN 'Good' THEN 2
        WHEN 'Fair' THEN 3
        ELSE 4
    END;

SELECT
    CASE
        WHEN dti <= 15 THEN 'Low DTI'
        WHEN dti <= 25 THEN 'Moderate DTI'
        WHEN dti <= 35 THEN 'High DTI'
        ELSE 'Very High DTI'
    END AS dti_segment,
    COUNT(*) AS total_loans,
    ROUND(100.0 * SUM(CASE WHEN loan_status IN ('Charged Off', 'Default', 'Late') THEN 1 ELSE 0 END) / COUNT(*), 2) AS default_rate
FROM loan_data
GROUP BY CASE
    WHEN dti <= 15 THEN 'Low DTI'
    WHEN dti <= 25 THEN 'Moderate DTI'
    WHEN dti <= 35 THEN 'High DTI'
    ELSE 'Very High DTI'
END
ORDER BY
    CASE dti_segment
        WHEN 'Low DTI' THEN 1
        WHEN 'Moderate DTI' THEN 2
        WHEN 'High DTI' THEN 3
        ELSE 4
    END;
