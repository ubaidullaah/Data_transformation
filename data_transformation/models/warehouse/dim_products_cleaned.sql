with source as (
    select 
    product_number_ as PRODUCT_NUMBER,
    Product as Product_Name,
    Product_line,
    Product_Type,
    Product_brand,
    Product_color,
    Line_cost,
    Unit_PRICE,
    current_timestamp() as insertion_timestamp 
    from {{ref('stg_products')}}
)

select * from source
