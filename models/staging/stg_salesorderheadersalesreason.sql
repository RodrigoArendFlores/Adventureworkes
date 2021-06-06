with
     source as (
         select 
         /* Primary key */
         salesreasonid 
        
         /* Foreign keys */	
         ,salesorderid	
         
         ,modifieddate	

     
         /* Stich coluns */
         ,_sdc_table_version		
         ,_sdc_received_at
         ,_sdc_extracted_at
         ,_sdc_sequence	
         ,_sdc_batched_at as last_etl_run

     from {{ source('adventure_works','salesorderheadersalesreason') }}
     )

     -- base
         , keyssalesreason as (
         select salesorderid, salesreasonid
         ,row_number () over (partition by salesorderid) as rownumber
         from source
         )

         -- os não repetidos
         , n_rep as (
         select salesorderid, salesreasonid as motivo_1
         from keyssalesreason
         where rownumber = 1)

         -- os repetidos 1 vez
         , rep_um as (
         select salesorderid, salesreasonid as motivo_2
         from keyssalesreason
         where rownumber = 2)

         -- os repetidos 2 vez
         , rep_dois as (
         select salesorderid, salesreasonid as motivo_3
         from keyssalesreason
         where rownumber = 3)

         , final as (
         select n_rep.salesorderid
         , n_rep.motivo_1
         , rep_um.motivo_2
         , rep_dois.motivo_3
         from n_rep
         left join rep_um on n_rep.salesorderid = rep_um.salesorderid
         left join rep_dois on n_rep.salesorderid = rep_dois.salesorderid
         )


 select * from final 