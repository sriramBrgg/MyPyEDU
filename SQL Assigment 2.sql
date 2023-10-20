#---------------------------------------Assigment 2-----------------------------------

use day1;

CREATE TABLE customers
( customer_id int NOT NULL,
  customer_name char(50) NOT NULL,
  address char(50),
  city char(50),
  state char(25),
  zip_code char(10),
  CONSTRAINT customers_pk PRIMARY KEY (customer_id)
);



insert into customers values ('101','Sriram','Mumbai','Thane','Maharstra','421305'),
('102','Rahul','Mumbai','Bhiwandi','Maharstra','421306'),
('103','Ankit','Mumbai','Thane','Maharstra','421307'),
('104','Raj','Mumbai','Dombivali','Maharstra','421308'),
('105','Vikas','Mumbai','Diva','Maharstra','421309'),
('106','Sagar','Mumbai','Kopar','Maharstra','421310'),
('109','Raju','Mumbai','Bhiwandi','Maharstra','421302'),
('110','Avtar','Mumbai','Bhiwandi','Maharstra','421302');

select * from customers;


CREATE TABLE OrderProduct
( Order_id int NOT NULL,
  customer_name char(50) NOT NULL,
  product_Name char(50),
  address char(50),
  city char(50),
  state char(25),
  zip_code char(10),
  CONSTRAINT Order_pk PRIMARY KEY (Order_id)
);

TRUNCATE table OrderProduct;

insert into OrderProduct values ('101','sriram','Mobile','Mumbai','Thane','Maharstra','421305'),
('102','Rahul','Laptop','Mumbai','Bhiwandi','Maharstra','421306'),
('103','Ankit','Pen','Mumbai','Thane','Maharstra','421307'),
('104','Raj','Bike','Mumbai','Dombivali','Maharstra','421308'),
('105','Vikas','Car','Mumbai','Diva','Maharstra','421309'),
('106','Sagar','iphone','Mumbai','Kopar','Maharstra','421310'),
('107','Shiv','Asus','Mumbai','Bhiwandi','Maharstra','421302'),
('108','Sunny','Iball','Mumbai','Bhiwandi','Maharstra','421302');


select * from OrderProduct;

# A> Right Join
SELECT Cust.customer_id, Cust.customer_name, Cust.address, Cust.city, Cust.state,Ordp.Order_id, Ordp.product_Name
from customers as Cust
right join OrderProduct as Ordp
on Cust.customer_id=Ordp.Order_id;

# B> Left Join
SELECT Cust.customer_id, Cust.customer_name, Cust.address, Cust.city, Cust.state,Ordp.Order_id, Ordp.product_Name
from customers as Cust
left join OrderProduct as Ordp
on Cust.customer_id=Ordp.Order_id;

# C> Inner Join
SELECT Cust.customer_id, Cust.customer_name, Cust.address, Cust.city, Cust.state,Ordp.Order_id, Ordp.product_Name
from customers as Cust
INNER JOIN OrderProduct as Ordp
on Cust.customer_id=Ordp.Order_id;

# D> Left Join
SELECT Cust.customer_id, Cust.customer_name, Cust.address, Cust.city, Cust.state,Ordp.Order_id, Ordp.product_Name
from customers as Cust
left join OrderProduct as Ordp
on Cust.customer_id=Ordp.Order_id;


# E> Intersect
SELECT Cust.customer_id, Cust.customer_name, Cust.address, Cust.city, Cust.state
from customers as Cust
where Cust.customer_id in (SELECT Order_id from OrderProduct);

#F>Union
SELECT Cust.customer_id, Cust.customer_name, Cust.address, Cust.city, Cust.state,Ordp.Order_id, Ordp.product_Name
from customers as Cust
left join OrderProduct as Ordp
on Cust.customer_id=Ordp.Order_id

UNION

SELECT Cust.customer_id, Cust.customer_name, Cust.address, Cust.city, Cust.state,Ordp.Order_id, Ordp.product_Name
from customers as Cust
right join OrderProduct as Ordp
on Cust.customer_id=Ordp.Order_id;


#G>Union all

SELECT Cust.customer_id, Cust.customer_name, Cust.address, Cust.city, Cust.state,Ordp.Order_id, Ordp.product_Name
from customers as Cust
left join OrderProduct as Ordp
on Cust.customer_id=Ordp.Order_id

UNION ALL

SELECT Cust.customer_id, Cust.customer_name, Cust.address, Cust.city, Cust.state,Ordp.Order_id, Ordp.product_Name
from customers as Cust
right join OrderProduct as Ordp
on Cust.customer_id=Ordp.Order_id;


