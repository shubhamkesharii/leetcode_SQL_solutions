# Write your MySQL query statement below
select id,'Root' as type from tree t where p_id is null
union
select id,'Inner' as type from tree t where exists(select 1 from tree where p_id = t.id ) and p_id is not null
union
select id,'Leaf' as type from tree t where not exists(select 1 from tree where p_id = t.id ) and p_id is not null