#Q-1. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
select first_name
from worker
where first_name <> 'Vipul' or first_name <>'Satish';

#Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select substring(first_name, -1, 6) from worker where firstname like '%h';

#Q-3. Write a query to validate Email of Employee.
select email from employee where email like '%_@%._%';