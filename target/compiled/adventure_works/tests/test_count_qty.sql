
with dbt__CTE__INTERNAL_test as (
with
    validation as (
        select count(salesorderid) as count_val
        from `adventureworks-312502`.`dbt_rodrigo`.`fact_salesorderdetail`
        where orderdate between '2011-01-01' and '2011-12-31'
    )

select * 
from validation 
where count_val != 5716
)select count(*) from dbt__CTE__INTERNAL_test