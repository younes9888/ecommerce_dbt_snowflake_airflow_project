SELECT 
    ROW_NUMBER() OVER(ORDER BY country) AS country_key,
    country
FROM E_COMMERCE_DB.RAW.stg_ecommerce
GROUP BY (country)