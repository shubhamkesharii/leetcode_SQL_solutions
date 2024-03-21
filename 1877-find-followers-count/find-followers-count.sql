# Write your MySQL query statement below
select user_id, count(follower_id) as followers_count
from followers
group by User_id
order by user_id