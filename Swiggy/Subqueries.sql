use swiggy;

select * from swiggy.restaurants where city='abohar' and rating_count=(select min(rating_count) from swiggy.restaurants);

#which restaurant generated max revenue all over India

select name, rating_count, cost, rating_count*cost as 'revenue' from swiggy.restaurants where rating_count*cost=(select max(rating_count*cost) from swiggy.restaurants);

#How many res have rating more than average rating?

select count(*) as Count from swiggy.restaurants where rating>(select avg(rating) from swiggy.restaurants);

#Which res of Delhi generated maximum revenue?

select name, rating_count, cost, rating_count*cost as 'revenue' from swiggy.restaurants
where city="Delhi" and
rating_count*cost=(select max(rating_count*cost) from swiggy.restaurants where city="Delhi");

#Which res with more than average cost of a restauarant in Delhi has generated most revenue?
#Option 1

select name, city, rating, rating_count, cost, rating_count*cost as 'revenue' from swiggy.restaurants
where city="Delhi" and
cost>(select avg(cost) from swiggy.restaurants where city="Delhi")
order by revenue desc limit 1;

#Option 2 using nested subqueries

select name, city, rating, rating_count, cost, rating_count*cost as 'revenue' from swiggy.restaurants
where rating_count*cost=(select max(rating_count*cost) from swiggy.restaurants where city="Delhi") and
city="Delhi" and
cost>(select avg(cost) from swiggy.restaurants where city="Delhi");

#Which res with less than average cost of a restauarant in Delhi has generated most revenue?
#Option 1

select name, city, rating, rating_count, cost, rating_count*cost as 'revenue' from swiggy.restaurants
where city="Delhi" and
cost<(select avg(cost) from swiggy.restaurants where city="Delhi")
order by revenue desc limit 1;

#Option 2 using nested subqueries

#Which res with more than average cost of a restauarant in Delhi has generated most revenue?
#Option 1

select name, city, rating, rating_count, cost, rating_count*cost as 'revenue' from swiggy.restaurants
where city="Delhi" and
cost<(select avg(cost) from swiggy.restaurants where city="Delhi")
order by revenue desc limit 1;

#Option 2 using nested subqueries

select name, city, rating, rating_count, cost, rating_count*cost as 'revenue' from swiggy.restaurants
where rating_count*cost=(select max(rating_count*cost) from swiggy.restaurants where city="Delhi") and
city="Delhi" and
cost<(select avg(cost) from swiggy.restaurants where city="Delhi");



