with source as (
    select * from {{source('Sales','daily_sales')}}
)

select *,current_timestamp() as ingestion_timestamp
from source