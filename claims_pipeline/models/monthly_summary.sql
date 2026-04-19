SELECT
    DATE_TRUNC('month', claim_date) AS month,
    COUNT(*)                         AS total_claims,
    SUM(claim_amount)                AS total_amount,
    ROUND(AVG(claim_amount), 2)      AS avg_amount
FROM {{ ref('approved_claims') }}
GROUP BY 1
ORDER BY 1
