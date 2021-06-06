
    
    



select count(*) as validation_errors
from (

    select
        product.productid

    from `adventureworks-312502`.`dbt_rodrigo`.`dim_product`
    where product.productid is not null
    group by product.productid
    having count(*) > 1

) validation_errors


