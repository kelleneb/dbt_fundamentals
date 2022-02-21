with

payments as (
        select * from analytics.dbt_fundamentals_kb.stg_payments
)

select
    order_id
    , sum(amount) as total_amount
    from payments
    group by order_id
    having total_amount < 0