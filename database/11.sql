--11. Create table given below: Salesperson and Customer

mysql> create table salesperson(sno int primary key,sname varchar(20),city varchar(20),comm flo
at);
Query OK, 0 rows affected (0.07 sec)

mysql> describe salesperson;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| sno   | int         | NO   | PRI | NULL    |       |
| sname | varchar(20) | YES  |     | NULL    |       |
| city  | varchar(20) | YES  |     | NULL    |       |
| comm  | float       | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into salesperson values(1001,"peel","london",0.12),(1002,"serres","san jose",0.13
),(1004,"motika","london",0.11),(1007,"rafkin","barcelona",0.15),(1003,"axelrod","new york",01);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from salesperson;
+------+---------+-----------+------+
| sno  | sname   | city      | comm |
+------+---------+-----------+------+
| 1001 | peel    | london    | 0.12 |
| 1002 | serres  | san jose  | 0.13 |
| 1003 | axelrod | new york  |    1 |
| 1004 | motika  | london    | 0.11 |
| 1007 | rafkin  | barcelona | 0.15 |
+------+---------+-----------+------+
5 rows in set (0.00 sec)

mysql> create table customer(cnm int primary key,cname varchar(20),city varchar(20),rating int,sno int,foreign key(sno) references salesperson(sno));
Query OK, 0 rows affected (0.05 sec)

mysql> describe customer;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| cnm    | int         | NO   | PRI | NULL    |       |
| cname  | varchar(20) | YES  |     | NULL    |       |
| city   | varchar(20) | YES  |     | NULL    |       |
| rating | int         | YES  |     | NULL    |       |
| sno    | int         | YES  | MUL | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into customer values(201,"hoffman","london",100,1001),(202,"giovanne","roe",200,1
003),(203,"liu","san jose",300,1002),(204,"grass","barcelona",100,1002),(206,"clemens","london"
,300,1007),(207,"pereira","roe",100,1004);
Query OK, 6 rows affected (0.04 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-----+----------+-----------+--------+------+
| cnm | cname    | city      | rating | sno  |
+-----+----------+-----------+--------+------+
| 201 | hoffman  | london    |    100 | 1001 |
| 202 | giovanne | roe       |    200 | 1003 |
| 203 | liu      | san jose  |    300 | 1002 |
| 204 | grass    | barcelona |    100 | 1002 |
| 206 | clemens  | london    |    300 | 1007 |
| 207 | pereira  | roe       |    100 | 1004 |
+-----+----------+-----------+--------+------+
6 rows in set (0.00 sec)
