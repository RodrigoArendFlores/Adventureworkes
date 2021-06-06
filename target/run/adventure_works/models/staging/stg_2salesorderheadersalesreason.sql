

  create or replace view `adventureworks-312502`.`dbt_rodrigo`.`stg_2salesorderheadersalesreason`
  OPTIONS()
  as with pivot as (
         select
         salesorderid, 
         
         
  
    sum(
      
      case
      when salesreasonid = '1'
        then 1
      else 0
      end
    )
    
      
            as `1`
      
    
    ,
  
    sum(
      
      case
      when salesreasonid = '2'
        then 1
      else 0
      end
    )
    
      
            as `2`
      
    
    ,
  
    sum(
      
      case
      when salesreasonid = '5'
        then 1
      else 0
      end
    )
    
      
            as `5`
      
    
    ,
  
    sum(
      
      case
      when salesreasonid = '9'
        then 1
      else 0
      end
    )
    
      
            as `9`
      
    
    ,
  
    sum(
      
      case
      when salesreasonid = '10'
        then 1
      else 0
      end
    )
    
      
            as `10`
      
    
    ,
  
    sum(
      
      case
      when salesreasonid = '6'
        then 1
      else 0
      end
    )
    
      
            as `6`
      
    
    ,
  
    sum(
      
      case
      when salesreasonid = '4'
        then 1
      else 0
      end
    )
    
      
            as `4`
      
    
    
  


         from `adventureworks-312502`.`dbt_rodrigo`.`stg_salesorderheadersalesreason`
         group by salesorderid	

     )

 select * from pivot;

