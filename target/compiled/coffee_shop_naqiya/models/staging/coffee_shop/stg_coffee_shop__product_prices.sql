with source as (
    select * from `analytics-engineers-club`.`coffee_shop`.`product_prices`
), 

renamed as (
    select
        -- ids 
        id as product_prices_id, 
        product_id, 

        price, 
        
        -- dates 
        created_at,
        ended_at 

    from source 
)

select * from renamed