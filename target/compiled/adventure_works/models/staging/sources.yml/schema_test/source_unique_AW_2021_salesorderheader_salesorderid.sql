
    
    



select count(*) as validation_errors
from (

    select
        salesorderid

    from `adventureworks-312502`.`AW_2021`.`salesorderheader`
    where salesorderid is not null
    group by salesorderid
    having count(*) > 1

) validation_errors


