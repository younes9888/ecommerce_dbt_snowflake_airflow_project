select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select total_price
from E_COMMERCE_DB.RAW.mrt_fct_ecommerce
where total_price is null



      
    ) dbt_internal_test