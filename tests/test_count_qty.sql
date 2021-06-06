with
    validation as (
        select count(salesorderid) as count_val
        from {{ ref('fact_salesorderdetail') }}
        where orderdate between '2011-01-01' and '2011-12-31'
    )

select * 
from validation 
where count_val != 5716