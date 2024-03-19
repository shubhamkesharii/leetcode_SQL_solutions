# Write your MySQL query statement below
select v.customer_id, count(v.visit_id) as count_no_trans 
from visits as v
left join transactions t 
on v.visit_id=t.visit_id
WHERE t.visit_id IS Null
group by customer_id
