
    
    

select
    product_key as unique_field,
    count(*) as n_records

from E_COMMERCE_DB.RAW.mrt_dim_product
where product_key is not null
group by product_key
having count(*) > 1


