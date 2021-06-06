
with dbt__CTE__INTERNAL_test as (
with
    validation as (
        select sum(orderqty) as sum_val
        from `adventureworks-312502`.`dbt_rodrigo`.`fact_salesorderdetail`
        where orderdate between '2011-01-01' and '2011-12-31'
    )

select * 
from validation 
where sum_val != 12888
)select count(*) from dbt__CTE__INTERNAL_test