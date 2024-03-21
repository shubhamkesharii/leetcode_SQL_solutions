SELECT employee_id, salary AS bonus FROM Employees
WHERE MOD (employee_id, 2) = 1 AND lower(name) NOT LIKE 'm%'
UNION
SELECT employee_id, salary*0 AS bonus FROM Employees
WHERE MOD (employee_id, 2) = 0 OR lower(name) LIKE 'm%'
ORDER by employee_id ASC;