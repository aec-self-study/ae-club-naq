with source as (

    select * from {{ source('coffee_shop', 'orders') }}

),

renamed as (

    select
        -- ids -- 
        id as order_id, 
        customer_id, 

        -- order information -- 
        total as order_total,
        address, 
        state,
        zip, 

        -- dates -- 
        created_at 

    from source

)

select * from renamed