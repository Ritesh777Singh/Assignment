--Q18.Write a SQL statement that displays all the information about all salespeople

mysql> create table salespeople(salesman_id int primary key,name varchar(20),city varchar(20),commision decimal(10,2));
Query OK, 0 rows affected (0.09 sec)

mysql> describe salespeople;
+-------------+---------------+------+-----+---------+-------+
| Field       | Type          | Null | Key | Default | Extra |
+-------------+---------------+------+-----+---------+-------+
| salesman_id | int           | NO   | PRI | NULL    |       |
| name        | varchar(20)   | YES  |     | NULL    |       |
| city        | varchar(20)   | YES  |     | NULL    |       |
| commision   | decimal(10,2) | YES  |     | NULL    |       |
+-------------+---------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into salespeople values(5001,"james hoog","new yory",0.15),(5002,"nail knite","pa
ris",0.13),(5005,"pit ales","london",0.11),(5006,"mc lyon","paris",0.14),(5007,"paul adam","rom
e",0.13),(5003,"lauson hen","san jose",0.12));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> insert into salespeople values(5001,"james hoog","new yory",0.15),(5002,"nail knite","paris",0.13),(5005,"pit ales","london",0.11),(5006,"mc lyon","paris",0.14),(5007,"paul adam","rome",0.13),(5003,"lauson hen","san jose",0.12);
Query OK, 6 rows affected (0.04 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select *from salespeople;
+-------------+------------+----------+-----------+
| salesman_id | name       | city     | commision |
+-------------+------------+----------+-----------+
|        5001 | james hoog | new yory |      0.15 |
|        5002 | nail knite | paris    |      0.13 |
|        5003 | lauson hen | san jose |      0.12 |
|        5005 | pit ales   | london   |      0.11 |
|        5006 | mc lyon    | paris    |      0.14 |
|        5007 | paul adam  | rome     |      0.13 |
+-------------+------------+----------+-----------+
6 rows in set (0.00 sec)
