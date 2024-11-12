--Q3.Get First_Name from employee table using Tom name “Employee Name”.

mysql> select first_name as 'employee name' from employee where first_name='tom';
+---------------+
| employee name |
+---------------+
| Tom           |
+---------------+
1 row in set (0.00 sec)