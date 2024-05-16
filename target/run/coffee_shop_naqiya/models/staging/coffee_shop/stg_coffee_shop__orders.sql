

  create or replace view `aec-students`.`dbt_naqiyamoti`.`stg_coffee_shop__orders`
  OPTIONS()
  as with source as (
    select * from `analytics-engineers-club`.`coffee_shop`.`orders`
), 

renamed as (
    select
        -- ids 
        id as order_id, 
        customer_id, 

        -- order information 
        total as order_total,
        address,
        state, 
        zip, 
        
        -- dates
        created_at 

    from source 
)

select * from renamed;

