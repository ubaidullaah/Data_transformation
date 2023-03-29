with source as (
    select 
    Retailer_code,
    Product_number,
    date as order_date,
    quantity as Order_QuantityCountry,
    current_timestamp() as insertion_timestamp 
    from {{ref('stg_orders')}}
)

select * from source
