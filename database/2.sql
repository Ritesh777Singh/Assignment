--Q2.Create table given below: Employee and IncentiveTable


mysql> create table employee(employee_id int primary key,first_name varchar(20),last_name varchar(20),salary int ,joining_date datetime,department varchar(20));
Query OK, 0 rows affected (0.09 sec)

mysql> describe  employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employee_id  | int         | NO   | PRI | NULL    |       |
| first_name   | varchar(20) | YES  |     | NULL    |       |
| last_name    | varchar(20) | YES  |     | NULL    |       |
| salary       | int         | YES  |     | NULL    |       |
| joining_date | datetime    | YES  |     | NULL    |       |
| department   | varchar(20) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> insert into employee values(1,"John","Abraham",1000000,"2013-01-01 00:00:00","Banking"),(2,"Michael","Clarke",800000,"2013-01-01 00:00:00","Insurance"),(3,"Roy","Thomas",700000,"2013-02-01 00:00:00","Banking"),(4,"Tom","Jose",600000,"2013-02-01 00:00:00","Insurance"),(5,"Jerry","Pinto",650000,"2013-02-01 00:00:00","Insurance"),(6,"Philip","Mathew",750000,"2013-01-01 00:00:00","Services"),(7,"Testname1","123",650000,"2013-01-01 00:00:00","Services"),(8,"Testname2","Lname%",600000,"2013-02-01 00:00:00","Insurance");
Query OK, 8 rows affected (0.04 sec)
Records: 8  Duplicates: 0  Warnings: 0

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
+-------------+------------+-----------+---------+---------------------+------------+
8 rows in set (0.00 sec)

mysql> create table incentive(employee_ref_id int ,foreign key(employee_ref_id) references employee(employee_id),incentive_date date, incentve_amount int);
Query OK, 0 rows affected (0.12 sec)

mysql> describe incentive;
+-----------------+------+------+-----+---------+-------+
| Field           | Type | Null | Key | Default | Extra |
+-----------------+------+------+-----+---------+-------+
| employee_ref_id | int  | YES  | MUL | NULL    |       |
| incentive_date  | date | YES  |     | NULL    |       |
| incentve_amount | int  | YES  |     | NULL    |       |
+-----------------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into incentive values(1,'2013-02-01',5000),(2,'2013-02-01',3000),(3,'2013-02-01',4000),(1,'2013-01-01',4500),(2,'2013-01-01',3500);
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from incentive;
+-----------------+----------------+-----------------+
| employee_ref_id | incentive_date | incentve_amount |
+-----------------+----------------+-----------------+
|               1 | 2013-02-01     |            5000 |
|               2 | 2013-02-01     |            3000 |
|               3 | 2013-02-01     |            4000 |
|               1 | 2013-01-01     |            4500 |
|               2 | 2013-01-01     |            3500 |
+-----------------+----------------+-----------------+
5 rows in set (0.00 sec)
