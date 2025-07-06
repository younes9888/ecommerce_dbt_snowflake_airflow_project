SELECT 
    ROW_NUMBER() OVER(ORDER  BY invoice_date) AS invoice_date_key,
    invoice_date,
    EXTRACT(YEAR FROM invoice_date) AS year,
    EXTRACT(QUARTER FROM invoice_date) as quarter,
    EXTRACT(MONTH FROM invoice_date) AS month,
    EXTRACT(DAY FROM invoice_date) AS day,
    EXTRACT(DAYOFWEEK FROM invoice_date) AS day_of_week, 
FROM E_COMMERCE_DB.RAW.stg_ecommerce
GROUP BY invoice_date