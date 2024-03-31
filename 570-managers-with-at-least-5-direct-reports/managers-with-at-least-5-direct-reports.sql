# Write your MySQL query statement below
select m.name
from employee e
join employee m
where e.managerid=m.id
group by e.managerid
having count(*) >=5