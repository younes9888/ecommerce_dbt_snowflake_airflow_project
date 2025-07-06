
    
    

select
    invoice_date_key as unique_field,
    count(*) as n_records

from E_COMMERCE_DB.RAW.mrt_dim_date
where invoice_date_key is not null
group by invoice_date_key
having count(*) > 1


