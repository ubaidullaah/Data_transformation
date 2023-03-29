with source as (
    select * from {{source('Sales','Orders')}}
)
select * from source