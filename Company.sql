CREATE TABLE PRODUCTS(
Product_Number INT,
Product_Name varchar(100),
Product_Quantity INT,
Product_Department varchar(200));

ALTER TABLE PRODUCTS ALTER COLUMN Product_Department SET DATA TYPE varchar(255);




INSERT INTO products(Product_Number, Product_Name, Product_Quantity, Product_Department) VALUES (300, 'A3, GI', 3, 'clothing' );

SELECT*FROM PRODUCTS;
