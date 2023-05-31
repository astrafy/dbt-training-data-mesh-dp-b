with customers as (

    select
      customer_id,
      first_name,
      last_name,
      full_name
    from {{ ref('int_customers') }}

)

select * from customers
