--Q23.From the following table, write a SQL query to find the items whose prices are higher than or equal to $250. Order the result by product price in 
descending, then product name in ascending. Return pro_name and pro_price.

mysql> select pro_name,pro_price from item_mast where pro_price>250
order by pro_price desc,pro_name asc;
+------------------+-----------+
| pro_name         | pro_price |
+------------------+-----------+
| monitor          |   5000.00 |
| mother board     |   3200.00 |
| printer          |   2600.00 |
| dvd drive        |    900.00 |
| cd drive         |    800.00 |
| speaker          |    550.00 |
| key board        |    450.00 |
| refill cartridge |    350.00 |
+------------------+-----------+
8 rows in set (0.00 sec)
