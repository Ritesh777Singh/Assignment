--Q15.All salespeople either in Barcelona or in London

mysql> select *from salesperson where city in ("london","bercelona");
+------+--------+--------+------+
| sno  | sname  | city   | comm |
+------+--------+--------+------+
| 1001 | peel   | london | 0.12 |
| 1004 | motika | london | 0.11 |
+------+--------+--------+------+
2 rows in set (0.00 sec)
