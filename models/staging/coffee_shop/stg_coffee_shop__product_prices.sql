with source as (
    select * from {{ source('coffee_shop', 'product_prices') }}
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