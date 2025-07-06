
    
    

select
    invoice_id as unique_field,
    count(*) as n_records

from E_COMMERCE_DB.RAW.mrt_fct_ecommerce
where invoice_id is not null
group by invoice_id
having count(*) > 1


