select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select unit_price
from E_COMMERCE_DB.RAW.mrt_fct_ecommerce
where unit_price is null



      
    ) dbt_internal_test