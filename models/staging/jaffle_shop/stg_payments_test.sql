-- select
--     id as payment_id,
--     orderid as order_id,
--     paymentmethod as payment_method,
--     status,

--     -- amount is stored in cents, convert it to dollars
--     amount / 100 as amount,
--     created as created_at

-- from raw.stripe.payment

with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from raw.jaffle_shop.orders

)

select * from orders