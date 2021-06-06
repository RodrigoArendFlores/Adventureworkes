
    
    



select count(*) as validation_errors
from (

    select
        businessentityid

    from `adventureworks-312502`.`dbt_rodrigo`.`dim_client`
    where businessentityid is not null
    group by businessentityid
    having count(*) > 1

) validation_errors


