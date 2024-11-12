--Q17.All customers excluding those with rating <= 100 unless they are located inRome


mysql> select *from customer where not rating <=100 or city ="roe";
+-----+----------+----------+--------+------+
| cnm | cname    | city     | rating | sno  |
+-----+----------+----------+--------+------+
| 202 | giovanne | roe      |    200 | 1003 |
| 203 | liu      | san jose |    300 | 1002 |
| 206 | clemens  | london   |    300 | 1007 |
| 207 | pereira  | roe      |    100 | 1004 |
+-----+----------+----------+--------+------+
4 rows in set (0.00 sec)
