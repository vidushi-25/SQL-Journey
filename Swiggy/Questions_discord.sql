#Questions on union, intersect, and except from swiggy dataset:

#1-Retrieve distinct cities and names of restaurants

select * from restaurants;

select distinct name from restaurants;
select distinct city from restaurants;

#2-Get all the names of restaurants and their corresponding cuisines, including duplicates:

select name, cuisine from restaurants
order by name asc;

#3-Combine all cities and their respective cost ranges from Swiggi, including duplicates:

select city, min(cost) as Min_Cost, max(cost) as Max_Cost from restaurants
group by city
order by max(cost) desc;

#4-Find cities in Swiggi with an average rating above 4

select city, round(avg(rating)) as Avg_rating from restaurants 
group by city
having Avg_rating>4
order by Avg_rating asc;

#5- List cuisines that have restaurants with a rating count higher than 100

 select cuisine, count(name) as Count from restaurants 
group by cuisine
having Count>100
order by Count asc;