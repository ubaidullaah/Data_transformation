with source as (
    select * from {{source('Sales','Orders')}}
)

select *,current_timestamp() as ingestion_timestamp
from source