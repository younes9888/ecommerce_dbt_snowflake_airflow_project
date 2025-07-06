SELECT 
    ROW_NUMBER() OVER(ORDER BY country) AS country_key,
    country
FROM {{ref('stg_ecommerce')}}
GROUP BY (country)