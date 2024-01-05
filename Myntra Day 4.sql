# Finding the top 5 brands which have the most number of products | different products in inventory

SELECT brand_tag, count(product_name) from myntra.products
group by brand_tag
order by count(product_name) DESC limit 5;

# Find the top 5 brands which sold most no. of products
SELECT brand_tag, sum(rating_count) as Products_sold from myntra.products
group by brand_tag
order by sum(rating_count) DESC limit 5;

# Find the top 5 most expensive brands based on disc price
SELECT brand_tag, round(avg(discounted_price)) from myntra.products
group by brand_tag
order by avg(discounted_price) DESC limit 5;

# Find the top 5 least expensive brands based on disc price
SELECT brand_tag, round(avg(discounted_price)) from myntra.products
group by brand_tag
order by avg(discounted_price) ASC limit 5;

# Finding the top 10 selling product categories
SELECT product_tag, sum(rating_count) as products_sold from myntra.products
group by product_tag
order by products_sold DESC limit 10;

# Finding the top 10 brands giving max discount
SELECT brand_tag, avg(marked_price-discounted_price) from myntra.products
group by brand_tag
order by avg(marked_price-discounted_price) DESC limit 10;

# Finding the top 10 most expensive product categories
SELECT product_tag, round(avg(discounted_price)) as avg_price from myntra.products
group by product_tag
order by avg_price DESC limit 10;


