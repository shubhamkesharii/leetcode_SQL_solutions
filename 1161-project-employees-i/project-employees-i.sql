# Write your MySQL query statement below
select p.project_id, Round(Avg(1.00 * experience_years),2) as average_years 
from project p
join Employee as e on p.employee_id=e.employee_id
group by project_id