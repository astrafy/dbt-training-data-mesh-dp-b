with customers as (

    select
      customer_id,
      full_name
    from {{ ref('int_customers') }}

)

select * from customers
