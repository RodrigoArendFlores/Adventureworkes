with
     source as (
         select 
         /* Primary key */
         productid
        
         /* Foreign keys */
         ,productsubcategoryid
         ,productmodelid	

         ,name
         ,sellenddate		
         ,safetystocklevel	
         ,finishedgoodsflag	
         ,class	
         ,makeflag	
         ,productnumber	
         ,reorderpoint	
         ,modifieddate	
         ,rowguid	
         ,weightunitmeasurecode	
         ,standardcost			
         ,style	
         ,sizeunitmeasurecode		
         ,listprice	
         ,daystomanufacture	
         ,productline	
         ,size	
         ,color	
         ,sellstartdate	
         ,weight	
     
     
         /* Stich coluns */
         ,_sdc_table_version		
         ,_sdc_received_at
         ,_sdc_extracted_at
         ,_sdc_sequence	
         ,_sdc_batched_at as last_etl_run

     from {{ source('adventure_works','product') }}
 )
 select * from source 