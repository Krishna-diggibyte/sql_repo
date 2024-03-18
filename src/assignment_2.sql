-- Create Database as product_database 

create database product_database
use product_database

-- Create table product_details and find the data

CREATE TABLE product_details (
    sell_date DATE,
    product VARCHAR(50)
);

INSERT INTO product_details (sell_date, product) 
VALUES 
('2020-05-30', 'Headphones'), 
('2020-06-01', 'Pencil'), 
('2020-06-02', 'Mask'), 
('2020-05-30', 'Basketball'), 
('2020-06-01', 'Book'), 
('2020-06-02', 'Mask'), 
('2020-05-30', 'T-Shirt'),
('2020-06-05', 'Notebook'),
('2020-06-03', 'Running Shoes'),
('2020-06-04', 'Backpack'),
('2020-06-05', 'Umbrella'),
('2020-06-03', 'Gaming Mouse');

SELECT * FROM product_details;



-- Write a query to find for each date the number of different products sold and their names.  

SELECT sell_date, COUNT(DISTINCT product) AS num_sold,
STRING_AGG(product,', ') AS product_list
FROM product_details
GROUP BY sell_date
ORDER BY sell_date;


