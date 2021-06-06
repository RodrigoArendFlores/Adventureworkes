
    
    



select count(*) as validation_errors
from `adventureworks-312502`.`dbt_rodrigo`.`dim_product`
where product.productid is null


