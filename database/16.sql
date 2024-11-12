
--Q16.All salespeople with commission between 0.10 and 0.12. (Boundary vluesshould be excluded).


mysql> select *from salesperson where comm>0.10 and comm<0.12;
+------+--------+--------+------+
| sno  | sname  | city   | comm |
+------+--------+--------+------+
| 1001 | peel   | london | 0.12 |
| 1004 | motika | london | 0.11 |
+------+--------+--------+------+
2 rows in set (0.00 sec)

mysql> alter table salesprson modify comm decimal(10,2);
ERROR 1146 (42S02): Table 'assignment.salesprson' doesn't exist
mysql> alter table salesperson modify comm decimal(10,2);
Query OK, 5 rows affected, 4 warnings (0.10 sec)
Records: 5  Duplicates: 0  Warnings: 4

mysql> select *from salesperson where comm>0.10 and comm<0.12;
+------+--------+--------+------+
| sno  | sname  | city   | comm |
+------+--------+--------+------+
| 1004 | motika | london | 0.11 |
+------+--------+--------+------+
1 row in set (0.00 sec)

mysql> select *from salesperson;
+------+---------+-----------+------+
| sno  | sname   | city      | comm |
+------+---------+-----------+------+
| 1001 | peel    | london    | 0.12 |
| 1002 | serres  | san jose  | 0.13 |
| 1003 | axelrod | new york  | 1.00 |
| 1004 | motika  | london    | 0.11 |
| 1007 | rafkin  | barcelona | 0.15 |
+------+---------+-----------+------+
5 rows in set (0.00 sec)
