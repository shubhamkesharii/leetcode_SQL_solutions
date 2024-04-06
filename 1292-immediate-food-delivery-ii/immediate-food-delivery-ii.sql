# Write your MySQL query statement below
with ok as (select *, row_number() over (partition by customer_id order by order_date) as 'rn'
, (case when order_date = customer_pref_delivery_date then 1.0 else 0 end) as 'immediate'
from Delivery)

select round(100*sum(immediate)/count(immediate),2) as 'immediate_percentage'
from ok
where rn=1