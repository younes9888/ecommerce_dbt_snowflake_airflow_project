WITH base AS(
    SELECT * FROM {{ref ('stg_ecommerce')}}
),
prod_dim AS(
    SELECT product_key,product_code
    FROM {{ref ('mrt_dim_product')}}
),
date_dim AS(
    SELECT invoice_date_key,invoice_date
    FROM {{ref ('mrt_dim_date')}}
),
country_dim AS(
    SELECT country_key,country
    FROM {{ref ('mrt_dim_country')}}
)

SELECT base.invoice_id, prod_dim.product_key,base.customer_id,base.quantity,base.total_price,
        date_dim.invoice_date_key,country_dim.country_key
FROM base
LEFT JOIN prod_dim ON base.product_code=prod_dim.product_code
LEFT JOIN date_dim ON base.invoice_date=date_dim.invoice_date
LEFT JOIN country_dim ON base.country=country_dim.country
