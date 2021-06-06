with
    validation as (
        select sum(orderqty) as sum_val
        from {{ ref('fact_salesorderdetail') }}
        where orderdate between '2011-01-01' and '2011-12-31'
    )

select * 
from validation 
where sum_val != 12888