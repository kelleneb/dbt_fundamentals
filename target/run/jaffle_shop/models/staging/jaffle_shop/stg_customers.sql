
  create or replace  view analytics.dbt_fundamentals_kb.stg_customers 
  
   as (
    select
    id as customer_id,
    first_name,
    last_name

from raw.jaffle_shop.customers
  );
