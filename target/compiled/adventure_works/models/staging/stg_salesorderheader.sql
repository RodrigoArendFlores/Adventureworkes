with
 source as (
     select 
     /* Primary key */
     salesorderid
    
     /* Foreign keys */
     
     ,customerid
     ,shipmethodid		
     ,billtoaddressid	
     ,salespersonid
     ,rowguid
     ,territoryid
     ,creditcardid
     ,currencyrateid
     ,shiptoaddressid
     
     ,purchaseordernumber	
     ,onlineorderflag		
     ,status	
     ,creditcardapprovalcode		
     ,freight
     ,orderdate
     ,duedate
     ,taxamt	
     ,subtotal	
     ,totaldue	
     ,shipdate
     ,modifieddate		
     ,accountnumber
     ,revisionnumber

     /* Stich coluns */
     ,_sdc_table_version		
     ,_sdc_received_at
     ,_sdc_extracted_at
     ,_sdc_sequence	
     ,_sdc_batched_at as last_etl_run

     from `adventureworks-312502`.`adventure_works`.`salesorderheader`
 )
 select * from source