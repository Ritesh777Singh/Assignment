--Q6.Get employee details from employee table whose first name contains ‘J’.

mysql> select *from employee where first_name like('j%');
+-------------+------------+-----------+---------+---------------------+------------+
| employee_id | first_name | last_name | salary  | joining_date        | department |
+-------------+------------+-----------+---------+---------------------+------------+
|           1 | John       | Abraham   | 1000000 | 2013-01-01 00:00:00 | Banking    |
|           5 | Jerry      | Pinto     |  650000 | 2013-02-01 00:00:00 | Insurance  |
+-------------+------------+-----------+---------+---------------------+------------+
2 rows in set (0.00 sec)