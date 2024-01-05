# Select the most expensive products from 5th to 12th position

SELECT * from myntra.products order by marked_price desc limit 4,7;

# Finding the most expensive product on Myntra

SELECT * from myntra.products order by marked_price desc limit 0,1;

# Finding the least expensive product on Myntra

SELECT * from myntra.products order by marked_price ASC limit 0,1;

# Finding top 5 most expensive products

SELECT * from myntra.products order by marked_price desc limit 0,5;

# Finding the 2nd most expensive

SELECT * from myntra.products order by marked_price desc limit 1,1;

# Finding the 2nd least expensive

SELECT * from myntra.products order by marked_price asc limit 1,1;

# Finding the 10th most expensive product

SELECT * from myntra.products order by marked_price desc limit 9,1;

# Finding the worst rated product by Nike

SELECT * from myntra.products WHERE brand_tag='nike' order by rating asc limit 1;

# Finding the worst rated product by Nike and rating is not zero

SELECT * from myntra.products WHERE brand_tag='nike' AND not rating=0 order by rating asc limit 1;

# Finding the top 10 best rated t shirt from nike or adidas based on rating* rating_count

SELECT product_name, brand_tag, product_tag, rating*rating_count from myntra.products WHERE product_tag='tshirts' AND brand_tag IN ('nike','adidas') order by rating*rating_count desc limit 10;

# Worst rated 10 products based on rating of atleast 100 people

SELECT * from myntra.products WHERE rating_count>=100 order by rating asc limit 10;

# 10 worst rated t shirt based on rating of atleast 100 people

SELECT * from myntra.products WHERE rating_count>=100 and product_tag='tshirts' order by rating asc limit 10;

# Sort the products in alphatecially desc order based on product_name and show last 10 of them

SELECT * from myntra.products order by product_name desc limit 10;

# Find the list of tshirts from nike and adidas priced between 1000 and 1200. sort them based on ascending order of brand name and price 

SELECT * from myntra.products where product_tag='tshirts' and brand_tag IN('nike','adidas') and discounted_price between 1000 and 1200
ORDER BY product_name asc, discounted_price asc;








