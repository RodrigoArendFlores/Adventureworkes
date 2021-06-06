with
     source as (
         select 
         /* Primary key */
         specialofferid
        
         /* Foreign keys */
	
         
         ,startdate	
         ,maxqty	
         ,modifieddate	
         ,rowguid	
         ,type	
         ,discountpct	
         ,category		
         ,description	
         ,minqty	
         ,enddate	


     
         /* Stich coluns */
         ,_sdc_table_version		
         ,_sdc_received_at
         ,_sdc_extracted_at
         ,_sdc_sequence	
         ,_sdc_batched_at as last_etl_run

     from `adventureworks-312502`.`adventure_works`.`specialoffer`
 )
 select * from source