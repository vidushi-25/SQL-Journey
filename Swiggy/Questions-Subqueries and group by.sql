select * from swiggy.restaurants;

-- 1. Which restaurant of abohar is visited by least number of people?

select * from restaurants where city='abohar' and rating_count=(select min(rating_count) from restaurants where city='abohar');

-- 2. Which restaurant has generated maximum revenue all over india?

select *, cost*rating_count as 'Revenue' from restaurants where cost*rating_count=(select max(cost*rating_count) from restaurants);

-- 3. How many restaurants are having rating more than the average rating?

select count(*) from restaurants where rating>(select avg(rating) from restaurants);

-- 4. Which restaurant of Delhi has generated most revenue?

select *, cost*rating_count as 'Revenue' from restaurants where city='delhi' and cost*rating_count=(select max(cost*rating_count) from restaurants where city='delhi');

-- 5. Which restaurant chain has maximum number of restaurants?

select name, count(name) as 'No_of_Chains' from restaurants
group by name
order by count(name) desc limit 10;

-- 6. Which restaurant chain has generated maximum revenue?

select *, cost*rating_count as 'Revenue' from restaurants where cost*rating_count=(select max(cost*rating_count) from restaurants);

-- 7. Which city has maximum number of restaurants?

select city, count(id) as 'No_of_Restaurants' from restaurants
group by city
order by count(id) desc limit 1;

-- 8. Which city has generated maximum revenue all over india?

select city, sum(cost*rating_count) as 'Revenue' from restaurants
group by city
order by Revenue desc limit 1;

-- 9. List 10 least expensive cuisines?

select cuisine, round(avg(cost)) as 'Avg_Cost_of_Cuisine' from restaurants
group by cuisine
order by Avg_Cost_of_Cuisine asc limit 10;

-- 10. List 10 most expensive cuisines?

select cuisine, round(avg(cost)) as 'Avg_Cost_of_Cuisine' from restaurants
group by cuisine
order by Avg_Cost_of_Cuisine desc limit 10;

-- 11. What is the city having Biryani as most popular cuisine

#Based on popularity metric
select city, round(avg(rating*rating_count)) as 'Popularity_score' from restaurants where cuisine='biryani'
group by city
order by Popularity_score desc limit 1;

#Based on restaurant count
select city, count(*) as 'Count_as_Popularity' from restaurants where cuisine='biryani'
group by city
order by Count_as_Popularity desc limit 1;

-- 12. List top 10 unique restaurants with unique name only thorughout the dataset as per generate maximum revenue (Single restaurant with that name)

select name, sum(cost*rating_count) as 'Revenue' from restaurants
group by name having count(name)=1
order by Revenue desc limit 10;