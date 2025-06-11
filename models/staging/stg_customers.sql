with

source as (

    select * from {{ source('ecom', 'raw_customers') }}

),

renamed as (

    select

        ----------  ids x
        id as customer_id,

        ---------- text
        name as customer_name

    from source

)

select * from renamed
