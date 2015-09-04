1. Selects the names of all products that are not on sale.
1. select name from products where on_sale = 'f';
Teddy Bear
Cat Ears
Card Against Humanity
Set of 12 Mason Jars

2. Selects the names of all products that cost less than £20.
2. select name from products where price < 20.0;
Teddy Bear
The Ruby Programming Language
Silicon Valley Monopoly
Set of 12 Mason Jars

3. Selects the name and price of the most expensive product.
3. select name, max(price) from products;
Cat Ears|99.99

4. Selects the name and price of the second most expensive product.
4. select name,max(price) from products where price <> (select max(price) from products);
Brown Leather Boots|82.0

5. Selects the name and price of the least expensive product.
5. select name from products where price = 10.99;
Silicon Valley Monopoly

6. Selects the names and prices of all products, ordered by price in descending order.
6. select name, price from products where price order by price desc;
Cat Ears|99.99
Brown Leather Boots|82.0
Lonely Pillow|78.82
Card Against Humanity|25.0
Hoodie|25.0
Set of silverware|22.99
The Ruby Programming Language|19.99
Teddy Bear|17.99
Silicon Valley Monopoly|10.99
Set of 12 Mason Jars|6.22

7. Selects the average price of all products.
7. select avg(price) from products;
38.899

8. Selects the sum of the price of all products.
8. select sum(price) from products;
388.99

9. Selects the sum of the price of all products whose prices is less than £20.
9.  select sum(price) from products where price < 20.00;
55.19

10. Selects the id of the user with your name.
10.  select id from users where name = 'Erica Porter';
3

11. Selects the names of all users whose names start with the letter "J".
11. select name from users where name like 'j%';
Jon Rogers
James Gotsell

12. Selects the number of users whose first names are "Spencer".
12. select count(name) from users where name like '%Spencer%';
1

13. Selects the number of users who want a "Teddy Bear".
13. select count (user_id) from wishlists where product_id = 1;
6

14. Selects the count of items on the wishlish of the user with your name.
14. select count (product_id) from wishlists where user_id = 3;
4

15. Selects the count and name of all products on the wishlist, ordered by count in descending order.
15. select name, count(name) from products join wishlists on wishlists.product_id = products.id group by name;
Brown Leather Boots|4
Card Against Humanity|16
Cat Ears|15
Hoodie|17
Lonely Pillow|2
Set of 12 Mason Jars|2
Silicon Valley Monopoly|5
Teddy Bear|6
The Ruby Programming Language|10

16. Selects the count and name of all products that are not on sale on the wishlist, ordered by count in descending order.
16. select name, count(name) from products join wishlists on wishlists.product_id = products.id where on_sale = 'f' group by name order by count(name) desc; 
Card Against Humanity|16
Cat Ears|15
Teddy Bear|6
Set of 12 Mason Jars|2

17. Inserts a user with the name "Jonathan Anderson" into the users table. Ensure the created_at column is set to the current time.
17. insert into users (name, created_at) values ('Jonathan Anderson', current_timestamp);

18. Selects the id of the user with the name "Jonathan Anderson"?
18. select id from users where name = 'Jonathan Anderson';
15

19. Inserts a wishlist entry for the user with the name "Jonathan Anderson" for the product "The Ruby Programming Language".
19. insert into wishlists (user_id, product_id) values (15, 4);

20. Updates the name of the "Jonathan Anderson" user to be "Jon Anderson".
20. update users set name = 'Jon Anderson' where name = 'Jonathan Anderson';

21. Deletes the user with the name "Jon Anderson".
21. delete from users where name = 'Jon Anderson';

22. Deletes the wishlist item for the user you just deleted.
22. delete from wishlists where user_id = 15;