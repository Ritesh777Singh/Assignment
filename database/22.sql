--Q22.From the following table, write a SQL query to display the pro_name as 'Item Name' and pro_priceas 'Price in Rs
mysql> select pro_name as 'item name' ,pro_price as 'price in rs' from item_mast;
+------------------+-------------+
| item name        | price in rs |
+------------------+-------------+
| mother board     |     3200.00 |
| key board        |      450.00 |
| zip drive        |      250.00 |
| speaker          |      550.00 |
| monitor          |     5000.00 |
| dvd drive        |      900.00 |
| cd drive         |      800.00 |
| printer          |     2600.00 |
| refill cartridge |      350.00 |
| mouse            |      250.00 |
+------------------+-------------+
10 rows in set (0.00 sec)

