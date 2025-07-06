select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select invoice_date
from E_COMMERCE_DB.RAW.mrt_dim_date
where invoice_date is null



      
    ) dbt_internal_test