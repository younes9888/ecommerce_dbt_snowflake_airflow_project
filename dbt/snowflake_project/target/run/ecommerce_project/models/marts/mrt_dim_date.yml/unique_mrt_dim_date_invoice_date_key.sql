select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    invoice_date_key as unique_field,
    count(*) as n_records

from E_COMMERCE_DB.RAW.mrt_dim_date
where invoice_date_key is not null
group by invoice_date_key
having count(*) > 1



      
    ) dbt_internal_test