with source as (
    select 
    d.Retailer_code,
    d.PRODUCT_NUMBER,
    d.Order_method_code,
    d.date,
    d.quantity,
    d.Unit_PRICE_sale,
    d.Unit_PRICE,
    o.Order_method_type,
    current_timestamp() as insertion_timestamp 
    from {{ref('stg_daily_sales')}} d
    left join  {{ref('stg_order_methods')}} o
    on o.Order_method_code = d.Order_method_code
)

select * from source