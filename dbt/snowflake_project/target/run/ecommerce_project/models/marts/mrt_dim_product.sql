
  
    

        create or replace transient table E_COMMERCE_DB.RAW.mrt_dim_product
         as
        (SELECT 
    ROW_NUMBER() OVER(ORDER BY product_code,product_description) AS product_key,
    product_code,product_description,unit_price
FROM E_COMMERCE_DB.RAW.stg_ecommerce
GROUP BY (product_code,product_description,unit_price)
        );
      
  