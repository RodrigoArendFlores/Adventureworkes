

  create or replace view `adventureworks-312502`.`dbt_rodrigo`.`stg_countryregion`
  OPTIONS()
  as with
     source as (
         select 
         /* Primary key */
         countryregioncode 
        
         /* Foreign keys */
         	
         
         ,name as countryregion_name
         ,modifieddate	
         	

     
         /* Stich coluns */
         ,_sdc_table_version		
         ,_sdc_received_at
         ,_sdc_extracted_at
         ,_sdc_sequence	
         ,_sdc_batched_at as last_etl_run

     from `adventureworks-312502`.`adventure_works`.`countryregion`
 )
 select * from source;

