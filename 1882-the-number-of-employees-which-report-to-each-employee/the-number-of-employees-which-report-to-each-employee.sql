# Write your MySQL query statement below
select e1.employee_id, e1.name, count(e2.employee_id) as reports_count, round(avg(e2.age)) as average_age
from Employees e1, Employees e2
where e1.employee_id = e2.reports_to
group by 1
having reports_count>0
order by 1