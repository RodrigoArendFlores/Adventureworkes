

  create or replace view `adventureworks-312502`.`dbt_rodrigo`.`stg_productsubcategory`
  OPTIONS()
  as with
     source as (
         select 
         /* Primary key */
         productsubcategoryid		
         /* Foreign keys */
         ,productcategoryid	

         ,name as subcategory_name
         ,rowguid as subcategory_rowguid
         ,modifieddate as subcategory_modifieddate

         /* Stich coluns */
         ,_sdc_table_version		
         ,_sdc_received_at
         ,_sdc_extracted_at
         ,_sdc_sequence	
         ,_sdc_batched_at as last_etl_run

     from `adventureworks-312502`.`adventure_works`.`productsubcategory`
 )
 select * from source;

