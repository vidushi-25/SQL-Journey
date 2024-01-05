# Finding the max values

SELECT max(marked_price) from myntra.products;
SELECT * from myntra.products where marked_price=113999;

# Finding the min values

SELECT min(marked_price) from myntra.products;
SELECT * from myntra.products where marked_price=50;

# Finding most expensive Nike products

SELECT max(marked_price) from myntra.products WHERE brand_tag='nike';
SELECT * from myntra.products where marked_price=18395 AND brand_tag='nike';

# Finding average values
SELECT ROUND(AVG(marked_price)) from myntra.products;

# Finding most expensive, least expensive and average of PUMA products
SELECT max(marked_price) as MAX, min(marked_price) as MIN, avg(marked_price) as AVERAGE from myntra.products WHERE brand_tag='puma';

# Finding total revenue generated by each product
SELECT product_name, discounted_price, rating_count*discounted_price AS Total_revenue from myntra.products;

# Finding total revenue generated by all products
SELECT SUM(rating_count*discounted_price) FROM myntra.products;

# finding total products
SELECT COUNT(product_name) from myntra.products;

# Finding the number of products by Nike which cost more than 3000
SELECT COUNT(product_name) from myntra.products WHERE brand_tag='nike' and discounted_price > 3000;

# Finding the names of categories Nike serves
SELECT DISTINCT product_tag from myntra.products where brand_tag='nike';

SELECT COUNT(DISTINCT product_tag) from myntra.products WHERE brand_tag='nike';
SELECT COUNT(DISTINCT product_tag) from myntra.products WHERE brand_tag='adidas';
SELECT COUNT(DISTINCT product_tag) from myntra.products WHERE brand_tag='puma';

# Finding number of brands served on myntra

# Products with best rating
SELECT product_name, brand_tag, rating, rating_count, rating*rating_count, ((rating*rating_count)/sum(rating*rating_count))*100 as popularity_factor;