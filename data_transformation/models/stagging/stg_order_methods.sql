with source as (
    select * from {{source('Sales','Order_methods')}}
)

select *,current_timestamp() as ingestion_timestamp
from source