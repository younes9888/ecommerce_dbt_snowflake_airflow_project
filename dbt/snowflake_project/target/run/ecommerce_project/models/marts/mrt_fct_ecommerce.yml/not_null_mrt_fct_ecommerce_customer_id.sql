select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select customer_id
from E_COMMERCE_DB.RAW.mrt_fct_ecommerce
where customer_id is null



      
    ) dbt_internal_test