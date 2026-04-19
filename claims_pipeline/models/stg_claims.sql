SELECT
    claim_id,
    policy_id,
    UPPER(customer_name)      AS customer_name,
    COALESCE(claim_amount, 0) AS claim_amount,
    LOWER(status)             AS status,
    claim_date
FROM analytics.public.claims_raw
WHERE claim_id IS NOT NULL
