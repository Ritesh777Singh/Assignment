--Q20.From the following table, write a SQL query to select a range of products whose price is in the range Rs.200 to Rs.600. Begin and end values are included. Return pro_id, pro_name, pro_price, and pro_com.


mysql> use assignment;
Database changed
mysql> create table item_mast(pro_id int ,pro_name varchar(20),pro_price decimal(10,2),pro_com int);
Query OK, 0 rows affected (0.04 sec)

mysql> describe item_mast;
+-----------+---------------+------+-----+---------+-------+
| Field     | Type          | Null | Key | Default | Extra |
+-----------+---------------+------+-----+---------+-------+
| pro_id    | int           | YES  |     | NULL    |       |
| pro_name  | varchar(20)   | YES  |     | NULL    |       |
| pro_price | decimal(10,2) | YES  |     | NULL    |       |
| pro_com   | int           | YES  |     | NULL    |       |
+-----------+---------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into item_mast values(101,"mother board",3200.00,15),(
102,"key board",450.00,16),(103,"zip drive",250.00,14),(104,"speaker
",550.00,16),(105,"monitor",5000.00,11),(106,"dvd drive",900.00,12),
(107,"cd drive",800.00,12),(108,"printer",2600.00,13),(109,"refill c
artridge",350.00,13),(110,"mouse",250.00,12);
Query OK, 10 rows affected (0.03 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select *from item_mast;
+--------+------------------+-----------+---------+
| pro_id | pro_name         | pro_price | pro_com |
+--------+------------------+-----------+---------+
|    101 | mother board     |   3200.00 |      15 |
|    102 | key board        |    450.00 |      16 |
|    103 | zip drive        |    250.00 |      14 |
|    104 | speaker          |    550.00 |      16 |
|    105 | monitor          |   5000.00 |      11 |
|    106 | dvd drive        |    900.00 |      12 |
|    107 | cd drive         |    800.00 |      12 |
|    108 | printer          |   2600.00 |      13 |
|    109 | refill cartridge |    350.00 |      13 |
|    110 | mouse            |    250.00 |      12 |
+--------+------------------+-----------+---------+
10 rows in set (0.00 sec)

mysql> select pro_id,pro_price,pro_com from item_mast where pro_pric
e between 200.00 and 600.00;
+--------+-----------+---------+
| pro_id | pro_price | pro_com |
+--------+-----------+---------+
|    102 |    450.00 |      16 |
|    103 |    250.00 |      14 |
|    104 |    550.00 |      16 |
|    109 |    350.00 |      13 |
|    110 |    250.00 |      12 |
+--------+-----------+---------+
5 rows in set (0.00 sec)