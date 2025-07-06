






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and quantity >= 0
)
 as expression


    from E_COMMERCE_DB.RAW.stg_ecommerce
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors







