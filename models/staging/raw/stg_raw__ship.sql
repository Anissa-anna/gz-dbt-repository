with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        CAST(shipping_fee AS FLOAT64),
        logcost,
        ship_cost

    from source

)

select * from renamed
