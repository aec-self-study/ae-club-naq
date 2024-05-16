

  create or replace view `aec-students`.`dbt_naqiyamoti`.`stg_coffee_shop__customers`
  OPTIONS()
  as with source as (
    select * from `analytics-engineers-club`.`coffee_shop`.`customers`
), 

renamed as (
    select
        id as customer_id, 
        name as customer_name,
        email as customer_email
    from source 
)

select * from renamed;

