

  create or replace view `aec-students`.`dbt_naqiyamoti`.`monthly_customers`
  OPTIONS()
  as -- Use the `ref` function to select from other models
with customers as (
    select * from `aec-students`.`dbt_naqiyamoti`.`customers`
),

final as (
    select
        date_trunc(first_order_at, month) as signup_month,
        count(*) as new_customers
    from customers
    group by 1
)

select *
from final;

