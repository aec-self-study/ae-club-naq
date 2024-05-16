

  create or replace view `aec-students`.`dbt_naqiyamoti`.`stg_coffee_shop__products`
  OPTIONS()
  as with source as (
    select * from `analytics-engineers-club`.`coffee_shop`.`products`
), 

renamed as (
    select
        id as product_id, 
        name as product_name,
        category as product_category,

        -- dates 
        created_at 
    from source 
)

select * from renamed;

