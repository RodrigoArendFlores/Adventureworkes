

  create or replace view `adventureworks-312502`.`dbt_rodrigo`.`stg_customer`
  OPTIONS()
  as with
     source as (
         select 
         /* Primary key */
         customerid 
        
         /* Foreign keys */

         ,personid
         ,storeid
         ,territoryid

         ,modifieddate
         ,rowguid
    

     
         /* Stich coluns */
         ,_sdc_table_version		
         ,_sdc_received_at
         ,_sdc_extracted_at
         ,_sdc_sequence	
         ,_sdc_batched_at as last_etl_run

     from `adventureworks-312502`.`adventure_works`.`customer`
 )
 select * from source;

