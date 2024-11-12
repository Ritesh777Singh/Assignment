-- 1. Create Table Name : Student and Exam


mysql> create table student(roll_no int primary key,name varchar(20),branch varchar(20));
Query OK, 0 rows affected (0.09 sec)

mysql> describe student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll_no | int         | NO   | PRI | NULL    |       |
| name    | varchar(20) | YES  |     | NULL    |       |
| branch  | varchar(20) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.07 sec)
mysql> insert into student values (1,"jay","computer science"),(2,"suhani","electronics and com
"),(3,"kriti","electronics and com");
Query OK, 3 rows affected (0.04 sec)
Records: 3  Duplicates: 0  Warnings: 0
mysql> select *from student;
+---------+--------+---------------------+
| roll_no | name   | branch              |
+---------+--------+---------------------+
|       1 | jay    | computer science    |
|       2 | suhani | electronics and com |
|       3 | kriti  | electronics and com |
+---------+--------+---------------------+
3 rows in set (0.00 sec)

mysql> create table exam(roll_no int,foreign key(roll_no) references student(roll_no),s_code va
rchar(20),marks int,p_code varchar(20));
Query OK, 0 rows affected (0.12 sec)

mysql> describe exam;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| roll_no | int         | YES  | MUL | NULL    |       |
| s_code  | varchar(20) | YES  |     | NULL    |       |
| marks   | int         | YES  |     | NULL    |       |
| p_code  | varchar(20) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into exam values(1,'CS11',50,'CS'),(1,'CS12',60,'CS'),(2,'EC101',66,'EC'),(2,'EC102',70,'EC'),(3,'EC101',45,'EC'),(3,'EC102',50,'EC');
Query OK, 6 rows affected (0.04 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from exam;
+---------+--------+-------+--------+
| roll_no | s_code | marks | p_code |
+---------+--------+-------+--------+
|       1 | CS11   |    50 | CS     |
|       1 | CS12   |    60 | CS     |
|       2 | EC101  |    66 | EC     |
|       2 | EC102  |    70 | EC     |
|       3 | EC101  |    45 | EC     |
|       3 | EC102  |    50 | EC     |
+---------+--------+-------+--------+
6 rows in set (0.00 sec)
