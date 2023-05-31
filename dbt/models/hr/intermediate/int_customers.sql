with customers as (

    select * from {{ ref('stg_customers_source') }}

),

enriched_customers as (

    select
        customer_id,
        first_name,
        last_name,
        CONCAT(first_name, last_name) AS full_name

    from customers

)

select * from enriched_customers
