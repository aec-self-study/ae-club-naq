with source as (

    select * from {{ source('coffee_shop', 'products') }}

),

renamed as (

    select
        -- ids -- 
        id as product_id,  

        name as product_name,
        category, 

        -- dates -- 
        created_at 

    from source

)

select * from renamed