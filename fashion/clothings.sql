create database onlineshop;

use onlineshop;

create table salesman (salesmanid int primary key, name varchar(50) not null, city varchar(50) default " ", commission float(4,2));

insert into salesman values(5001,"James Hooq","New York",0.15),
(5002,"Nail Knite","Paris",0.13),
(5005,"Pit Alex","Londan",0.11),
(5006,"Mc Lyon","Paris",0.14),
(5003,"Lauson Hen",default,0.12),
(5007,"Paul Adam","Rome",0.13);

select * from salesman;

create table customer (customerid int primary key, customer_name varchar(50) not null, city varchar(50) default "Not Mentioned", grade int default null, salesmanid int default null, foreign key(salesmanid) references salesman(salesmanid));

desc customer;

set foreign_key_checks = 0;

insert into customer(customerid, customer_name, city, grade, salesmanid) values (3002,"Nick Rimando","New York",100,5001),
(3005,"Graham Zusi","California",200,5002),
(3001,"Brad Guzan","Londan",default,default),
(3004,"Fabian Johns","Paris",300,5006),
(3007,"Brad Davis","New York",200,5001),
(3009,"Geoff Camero","Berlin",100,default),
(3008,"Gulian Green","Londan",300,5002),
(3003,"Jozy Altidor","Morocow",200,5007);

create table corder (order_no int primary key, purch_amt float not null, order_date date,
customerid int, foreign key(customerid) references customer(customerid),
salesmanid int default null, foreign key(salesmanid) references salesman(salesmanid));

insert into corder values(70001,150.5,"2016-10-05",3005,5002),
(70009,270.65,"2016-09-10",3001,default),
(70002,65.26,"2016-10-05",3002,5001),
(70004,110.5,"2016-08-17",3009,default),
(70007,948.5,"2016-09-10",3005,5002),
(70005,2400.6,"2016-07-27",3007,5001),
(70008,5760,"2016-09-10",3002,5001),
(70010,1983.43,"2016-10-10",3004,5006),
(70003,2480.4,"2016-10-10",3009,default),
(70012,250.45,"2016-06-27",3008,5002),
(70011,75.29,"2016-08-17",3003,5007);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    product_price DECIMAL(10, 2),
    product_description VARCHAR(255),
    product_category VARCHAR(50)
);

INSERT INTO products (product_id, product_name, product_price, product_description, product_category) VALUES
(1, 'Classic T-Shirt', 14.99, 'A comfortable cotton t-shirt available in various colors', 'Tops'),
(2, 'Skinny Jeans', 39.99, 'Stylish skinny jeans with a perfect fit', 'Bottoms'),
(3, 'Denim Jacket', 59.99, 'A classic denim jacket with a modern twist', 'Outerwear'),
(4, 'Summer Dress', 49.99, 'A light and airy dress perfect for summer', 'Dresses'),
(5, 'Hoodie', 34.99, 'A cozy hoodie with a front pocket and hood', 'Sweatshirts'),
(6, 'Cargo Shorts', 24.99, 'Durable cargo shorts with multiple pockets', 'Bottoms'),
(7, 'Blazer', 79.99, 'A sleek blazer suitable for formal occasions', 'Outerwear'),
(8, 'Polo Shirt', 29.99, 'A classic polo shirt for a smart casual look', 'Tops'),
(9, 'Maxi Skirt', 39.99, 'A flowing maxi skirt with an elegant design', 'Bottoms'),
(10, 'Wool Coat', 129.99, 'A warm wool coat for the winter season', 'Outerwear'),
(11, 'Tank Top', 12.99, 'A simple and versatile tank top', 'Tops'),
(12, 'Chinos', 44.99, 'Comfortable and stylish chinos for everyday wear', 'Bottoms'),
(13, 'Sweater', 54.99, 'A soft and warm sweater made from high-quality wool', 'Sweatshirts'),
(14, 'Leather Jacket', 199.99, 'A premium leather jacket with a timeless look', 'Outerwear'),
(15, 'Athletic Shorts', 19.99, 'Breathable athletic shorts for sports and exercise', 'Bottoms');

# AGGREGATION & GROUPBY
select name,commission from salesman;

select distinct salesmanid from corder;

select name,city from salesman where city = "Paris";

select * from customer where grade = 200;

select order_no,order_date,purch_amt from corder where salesmanid=5001;

select product_name,product_price from products where product_price = (
select min(product_price) from products);

select * from customer where city = "New York" or grade <=100;
#or
select * from customer where city = "New York" or not grade > 100;

select * from salesman where commission between 0.12 and 0.14;

select * from salesman where commission >= 0.12 and commission <=0.14;

select * from customer where customer_name like "%n";

select * from salesman where name like "N__l%";

select * from customer where grade is null;

select sum(purch_amt) as Total from corder;

select count(salesmanid) as Totsalesman from corder;

# IT RETRIVES ONLY THE DISTINCT SALESMAN ID
select count(distinct salesmanid) as Totsalesman from corder;

select city,max(grade) from customer group by city;

select customerid,max(purch_amt) as Highest_Purchase_Amount from corder group by customerid;

select customerid,order_date,max(purch_amt) from corder group by customerid,order_date;

select salesmanid,max(purch_amt) from corder where order_date = '2016-08-17' group by salesmanid;

select customerid,order_date,max(purch_amt) from corder group by customerid,order_date having max(purch_amt) > 2000.00;

select count(*) from corder where order_date = '2016-08-17';

# FINDING RELATIONS USING JOINS & SUB-QUERIES

select s.name,c.customer_name,c.city from salesman as s, customer as c where s.city = c.city;

select c.customer_name,s.name from customer as c, salesman as s where s.salesmanid = c.salesmanid;

select o.order_no,c.customer_name,o.customerid,o.salesmanid from corder as o,customer as c,salesman as s where
c.city <> s.city and o.customerid = c.customerid
and o.salesmanid = s.salesmanid;

select * from corder where salesmanid = (
select salesmanid from salesman where name = 'paul adam');

select * from corder where purch_amt > 
(select avg(purch_amt) from corder where order_date = '2016-10-10');

select * from corder where salesmanid in (
select salesmanid from salesman where city = 'paris');

select order_no,purch_amt,order_date,salesmanid from corder where salesmanid in (
select salesmanid from salesman where commission = (
select max(commission) from salesman));

# USING SUB-QUERY
select salesmanid,name from salesman as s where 1 < (
select count(*) from customer as c where s.salesmanid = c.salesmanid);
#or
# USING GROUP BY
select c.salesmanid,s.name from customer as c, salesman as s
where s.salesmanid = c.salesmanid group by c.salesmanid,s.name having count(c.salesmanid) > 1;

select * from salesman where salesmanid in (
select distinct salesmanid from customer a where not exists (
select * from customer b where a.salesmanid = b.salesmanid and a.customer_name <> b.customer_name));
#or
select c.salesmanid,s.name,s.city,s.commission from salesman as s, customer as c 
where s.salesmanid = c.salesmanid group by c.salesmanid,s.name 
having count(c.salesmanid) =1;
#or
select * from salesman where salesmanid not in (
select a.salesmanid from customer a,customer b where 
a.salesmanid = b.salesmanid and a.customer_name <> b.customer_name);

select * from corder where purch_amt > any (
select purch_amt from corder where order_date = '2016-09-10');

select * from customer where grade > all (
select grade from customer where city = 'New york');
