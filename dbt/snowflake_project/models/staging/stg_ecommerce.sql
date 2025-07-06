
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
FROM {{ source('raw_data', 'E_COMMERCE_TBL') }}
WHERE 
  {{ remove_nulls_from_columns([
    'INVOICENO',
    'STOCKCODE',
    'QUANTITY',
    'INVOICEDATE',
    'UNITPRICE',
    'CUSTOMERID',
    'COUNTRY'
  ]) }}
  AND UNITPRICE > 0  AND QUANTITY > 0