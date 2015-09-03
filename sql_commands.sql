1. select name from products where on_sale = 'f';
Teddy Bear
Cat Ears
Card Against Humanity
Set of 12 Mason Jars

2. select name from products where price < 20.0;
Teddy Bear
The Ruby Programming Language
Silicon Valley Monopoly
Set of 12 Mason Jars

3. select name, max(price) from products;
Cat Ears|99.99

4. select name,max(price) from products where price <> (select max(price) from products);
Brown Leather Boots|82.0

5. select name from products where price = 10.99;
Silicon Valley Monopoly

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

7. select avg(price) from products;
38.899

8. select sum(price) from products;
388.99

9.  select sum(price) from products where price < 20.00;
55.19

10.  select id from users where name = 'Erica Porter';
3

11. select name from users where name like 'j%';
Jon Rogers
James Gotsell

12. select count(name) from users where name like '%Spencer%';
1

13. select count (user_id) from wishlists where product_id = 1;
6

14. select count (product_id) from wishlists where user_id = 3;
4

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

16. select name, count(name) from products join wishlists on wishlists.product_id = products.id where on_sale = 'f' group by name order by count(name) desc; 
Card Against Humanity|16
Cat Ears|15
Teddy Bear|6
Set of 12 Mason Jars|2

17. insert into users (name, created_at) values ('Jonathan Anderson', current_timestamp);

18. select id from users where name = 'Jonathan Anderson';
15

19. insert into wishlists (user_id, product_id) values (15, 4);

20. update users set name = 'Jon Anderson' where name = 'Jonathan Anderson';

21. delete from users where name = 'Jon Anderson';

22. delete from wishlists where user_id = 15;