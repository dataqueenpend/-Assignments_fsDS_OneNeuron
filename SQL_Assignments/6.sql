#Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2014.
select * from workers where date_column between '2014-02-01' and '2014-02-29';

#Q-2. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
select full_name, some_data, date_column, count(id)
from workers
group by id, full_name, some_data, date_columns
having count(id) > 1;


#Q-3. How to remove duplicate rows from Employees table.
delete from employee
where
id in (
select id from(
select id, emp_name, row_number() over(
partition by emp_name
order by emp_name) as row_num
from empoyees) where row_num >1);
