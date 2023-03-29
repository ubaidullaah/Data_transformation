with source as (
    select * from {{source('Sales','Retailers')}}
)
select * from source