-- I'm adding these lines to create 
-- a merge conflict in the dbt Cloud IDE
with

source as (

    select * from {{ source('ecom', 'customers') }}

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
