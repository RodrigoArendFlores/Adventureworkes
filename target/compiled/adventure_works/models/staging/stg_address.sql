with
     source as (
         select 
         /* Primary key */
         addressid
        
         /* Foreign keys */
         ,stateprovinceid	
         
         ,city	
         ,modifieddate	
         ,rowguid	
         ,postalcode	
         ,spatiallocation	
         ,addressline1	
         ,addressline2			
         	

     
         /* Stich coluns */
         ,_sdc_table_version		
         ,_sdc_received_at
         ,_sdc_extracted_at
         ,_sdc_sequence	
         ,_sdc_batched_at as last_etl_run

     from `adventureworks-312502`.`adventure_works`.`address`
 )
 select * from source