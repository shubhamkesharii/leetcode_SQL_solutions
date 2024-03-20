# Write your MySQL query statement below
select Users.name, sum(Transactions.amount) as balance 
from Transactions
left join Users
on Transactions.account = users.account
group by Transactions.account
Having sum(Transactions.amount) > 10000;