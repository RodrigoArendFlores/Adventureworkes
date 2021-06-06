with
 source as (
     select 
     /* Primary key */
     	
     salesorderdetailid	     
    
     /* Foreign keys */
     ,salesorderid
     ,specialofferid	
     ,rowguid		
     ,productid	

     ,orderqty	
     ,unitprice		
     ,unitpricediscount	
     ,modifieddate	
     ,carriertrackingnumber

     
     /* Stich coluns */
     ,_sdc_table_version		
     ,_sdc_received_at
     ,_sdc_extracted_at
     ,_sdc_sequence	
     ,_sdc_batched_at as last_etl_run

     from {{ source('adventure_works','salesorderdetail') }}
 )
 select * from source 