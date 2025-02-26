with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        CAST(purchse_price as FLOAT64) as purchse_price

    from source

)

select * from renamed
