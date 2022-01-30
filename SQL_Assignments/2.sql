Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
select substring(first_name, 1,3)
from worker;

Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
select pattindex('%a%', 'Amitabh')
from worker;

Q-3. Write an SQL query to print the name of employees having the highest salary in each department.
select name where max(salary) group by department;