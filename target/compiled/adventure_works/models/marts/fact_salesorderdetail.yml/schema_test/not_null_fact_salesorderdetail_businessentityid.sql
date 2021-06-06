
    
    



select count(*) as validation_errors
from `adventureworks-312502`.`dbt_rodrigo`.`fact_salesorderdetail`
where businessentityid is null


