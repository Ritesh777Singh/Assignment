--Q7.Get department  wise maximum salary from employee  table order by salary ascending?


mysql> select department ,max(salary) as max_salary from employee group by department order by
max_salary asc;
+------------+------------+
| department | max_salary |
+------------+------------+
| Services   |     750000 |
| Insurance  |     800000 |
| Banking    |    1000000 |
+------------+------------+
3 rows in set (0.03 sec)
