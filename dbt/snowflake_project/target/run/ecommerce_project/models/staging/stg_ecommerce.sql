
  create or replace   view E_COMMERCE_DB.RAW.stg_ecommerce
  
   as (
    SELECT 
    INVOICENO as invoice_id,
    STOCKCODE as product_code,
    DESCRIPTION as product_description,
    QUANTITY::integer as quantity,
    INVOICEDATE as invoice_date,
    UNITPRICE::decimal(10,2) as unit_price,
    QUANTITY*UNITPRICE as total_price, 
    CUSTOMERID as customer_id,
    COUNTRY as country
FROM E_COMMERCE_DB.RAW.E_COMMERCE_TBL
WHERE 
  INVOICENO IS NOT NULL AND STOCKCODE IS NOT NULL AND QUANTITY IS NOT NULL AND INVOICEDATE IS NOT NULL AND UNITPRICE IS NOT NULL AND CUSTOMERID IS NOT NULL AND COUNTRY IS NOT NULL

  AND UNITPRICE > 0  AND QUANTITY > 0
  );

