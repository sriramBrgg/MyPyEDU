#-------------------------Assigment 1-------------------------------

use day1;

create table store_sales
(month varchar(20) not null,
prod_name varchar(20) not null,
sales int not null
);

select * from store_sales;

# truncate table store_sales;

insert into store_sales 
values ("Jan","Frout",45000),
 ("Jan","Vegetables",67000),
 ("Jan","Dairy",55000),
 ("Feb","Frout",42000),
 ("Feb","Vegetables",32000),
 ("Feb","Dairy",52000),
 ("March","Frout",61000),
 ("March","Vegetables",43000),
 ("March","Dairy",92000);



