with
     source as (
         select 
         /* Primary key */
         creditcardid
        
         /* Foreign keys */

    
         ,cardtype	
         ,expyear	
         ,modifieddate		
         ,expmonth	
         ,cardnumber	
         	
			
         	



     
         /* Stich coluns */
         ,_sdc_table_version		
         ,_sdc_received_at
         ,_sdc_extracted_at
         ,_sdc_sequence	
         ,_sdc_batched_at as last_etl_run

     from {{ source('adventure_works','creditcard') }}
 )
 select * from source 