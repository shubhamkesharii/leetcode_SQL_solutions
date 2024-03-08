# Write your MySQL query statement below
Select actor_id,director_id
From ActorDirector
GROUP BY actor_id,director_id
Having count(timestamp)>=3 