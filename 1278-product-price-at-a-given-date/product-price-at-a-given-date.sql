# Write your MySQL query statement below
select distinct a.product_id, coalesce(b.new_price, 10) as price from Products as a
left join
(select product_id, rank() over(partition by product_id order by change_date DESC) as xrank, new_price from Products
where change_date<='2019-08-16') as b
on a.product_id=b.product_id and b.xrank=1
order by 2 DESC;