
    
    



select count(*) as validation_errors
from (

    select
        productid

    from `adventureworks-312502`.`dbt_rodrigo`.`dim_product`
    where productid is not null
    group by productid
    having count(*) > 1

) validation_errors


