with source as (
    select 
    Retailer_code_ as Retailer_code,
    Retailer_name,
    Type as Retailer_type,
    Country,
    current_timestamp() as insertion_timestamp 
    from {{ref('stg_retailers')}}
)

select * from source
