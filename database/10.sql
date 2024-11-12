--10. Create After Insert trigger on Employee table which insert records in viewtable 

mysql> create trigger employee_s after insert on employee for each row inser
t into employee_view values(new.employee_id,new.first_name,new.last_name,new
.salary,new.joining_date,new.department);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into employee values(9,"ritesh","singh",500000,'2012-01-20 00:00:00',"IT");
Query OK, 1 row affected (0.04 sec)

mysql> select *from employee;
+-------------+------------+-----------+---------+---------------------+------------+
| employee_id | first_name | last_name | salary  | joining_date        | department |
+-------------+------------+-----------+---------+---------------------+------------+
|           1 | John       | Abraham   | 1000000 | 2013-01-01 00:00:00 | Banking    |
|           2 | Michael    | Clarke    |  800000 | 2013-01-01 00:00:00 | Insurance  |
|           3 | Roy        | Thomas    |  700000 | 2013-02-01 00:00:00 | Banking    |
|           4 | Tom        | Jose      |  600000 | 2013-02-01 00:00:00 | Insurance  |
|           5 | Jerry      | Pinto     |  650000 | 2013-02-01 00:00:00 | Insurance  |
|           6 | Philip     | Mathew    |  750000 | 2013-01-01 00:00:00 | Services   |
|           7 | Testname1  | 123       |  650000 | 2013-01-01 00:00:00 | Services   |
|           8 | Testname2  | Lname%    |  600000 | 2013-02-01 00:00:00 | Insurance  |
|           9 | ritesh     | singh     |  500000 | 2012-01-20 00:00:00 | IT         |
+-------------+------------+-----------+---------+---------------------+------------+
9 rows in set (0.00 sec)

mysql> select *from employee_view;
+-------------+------------+-----------+--------+---------------------+------------+
| employee_id | first_name | last_name | salary | joining_date        | department |
+-------------+------------+-----------+--------+---------------------+------------+
|           9 | ritesh     | singh     | 500000 | 2012-01-20 00:00:00 | IT         |
+-------------+------------+-----------+--------+---------------------+------------+
1 row in set (0.00 sec)