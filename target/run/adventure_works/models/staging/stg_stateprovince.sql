

  create or replace view `adventureworks-312502`.`dbt_rodrigo`.`stg_stateprovince`
  OPTIONS()
  as with
     source as (
         select 
         /* Primary key */
         stateprovinceid 
        
         /* Foreign keys */
         ,territoryid
         ,countryregioncode
    
         ,name as stateprovince_name	
         ,stateprovincecode
         ,modifieddate	
         ,rowguid				
         ,isonlystateprovinceflag		
         	



     
         /* Stich coluns */
         ,_sdc_table_version		
         ,_sdc_received_at
         ,_sdc_extracted_at
         ,_sdc_sequence	
         ,_sdc_batched_at as last_etl_run

     from `adventureworks-312502`.`adventure_works`.`stateprovince`
 )
 select * from source;

