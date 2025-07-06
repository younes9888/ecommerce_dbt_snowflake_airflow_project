SELECT 
    ROW_NUMBER() OVER(ORDER BY product_code,product_description) AS product_key,
    product_code,product_description,unit_price
FROM {{ref('stg_ecommerce')}}
GROUP BY (product_code,product_description,unit_price)
