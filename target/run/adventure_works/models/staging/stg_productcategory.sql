

  create or replace view `adventureworks-312502`.`dbt_rodrigo`.`stg_productcategory`
  OPTIONS()
  as with
     source as (
         select 
         /* Primary key */
         productcategoryid	

         ,name as prodcategory_name
         ,modifieddate as prodcategory_modifieddate 
         ,rowguid as prodcategory_rowguid

     
         /* Stich coluns */
         ,_sdc_table_version		
         ,_sdc_received_at
         ,_sdc_extracted_at
         ,_sdc_sequence	
         ,_sdc_batched_at as last_etl_run

     from `adventureworks-312502`.`adventure_works`.`productcategory`
 )
 select * from source;

