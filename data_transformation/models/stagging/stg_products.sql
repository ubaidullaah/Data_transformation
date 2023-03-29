with source as (
    select * from {{source('Sales','Products')}}
)
select * from source