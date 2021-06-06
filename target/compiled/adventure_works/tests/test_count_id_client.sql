
with dbt__CTE__INTERNAL_test as (
with
    validation as (
        select count(businessentityid) as sum_val
        from `adventureworks-312502`.`dbt_rodrigo`.`dim_client`
        
    )

select * 
from validation 
where sum_val != 19972
)select count(*) from dbt__CTE__INTERNAL_test