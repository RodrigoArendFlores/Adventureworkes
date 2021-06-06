
    
    



select count(*) as validation_errors
from (

    select
        salesorderid

    from `adventureworks-312502`.`adventure_works`.`salesorderheader`
    where salesorderid is not null
    group by salesorderid
    having count(*) > 1

) validation_errors


