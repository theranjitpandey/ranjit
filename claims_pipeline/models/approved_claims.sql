SELECT
    claim_id,
    policy_id,
    customer_name,
    claim_amount,
    claim_date
FROM {{ ref('stg_claims') }}
WHERE status = 'approved'
