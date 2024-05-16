with source as (
    select * from `analytics-engineers-club`.`coffee_shop`.`order_items`
), 

renamed as (
    select
        id as order_items_id, 
        order_id,
        product_id 
    from source 
)

select * from renamed