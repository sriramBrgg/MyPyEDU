#-------------------------Assigment 3-------------------------------
use day2;

SELECT * from bank_inventory_pricing
ORDER BY Estimated_sale_price ASC ;

#1) Which product has the highest estimated sale price, and what is the price?
SELECT  Product,Price,Estimated_sale_price
FROM bank_inventory_pricing
WHERE Estimated_sale_price = (SELECT MAX(Estimated_sale_price) FROM bank_inventory_pricing)
ORDER BY Estimated_sale_price;


#2) Calculate the total profit for each product (Estimated Sale Price - Purchase Cost).
#SELECT  Product,purchase_cost,Estimated_sale_price, SUM(Estimated_sale_price) - SUM(purchase_cost) as Total_Profit
#FROM bank_inventory_pricing
#GROUP BY Product;

SELECT  Product,SUM(purchase_cost) as purchase_cost ,SUM(Estimated_sale_price) as Estimated_sale_price, SUM(Estimated_sale_price) - SUM(purchase_cost) as Total_Profit
FROM bank_inventory_pricing
GROUP BY Product;




#3) How many products have missing values in the "purchase_cost" column?
SELECT  count(Product)
FROM bank_inventory_pricing
where purchase_cost is null;

#4) Calculate the total purchase cost for each product.
SELECT  Product,SUM(purchase_cost)
FROM bank_inventory_pricing
group by Product;

#5) Calculate the total revenue for each product (Quantity * Estimated Sale Price).
SELECT  Product,Quantity,Estimated_sale_price, Quantity * Estimated_sale_price as Total_Revenue
FROM bank_inventory_pricing;



