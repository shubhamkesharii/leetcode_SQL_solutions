# Write your MySQL query statement below
select p.product_name,
s.year,
s.price
FROM product p
JOIN sales s
ON p.product_id = s.product_id