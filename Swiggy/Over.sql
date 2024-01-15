#Find Avg Cost, Min Cost, Max Cost, Min Rating, Max Rating, Avg Rating, Min Rating Count, Max Rating Count, Avg Rating Count

Select *,
round(avg(cost) over()) as 'avg_cost', min(cost) over() as 'min_cost', max(cost) over() as 'max_cost',
round(avg(rating) over()) as 'avg_rating', min(rating) over() as 'min_rating', max(rating) over() as 'max_rating',
round(avg(rating_count) over()) as 'avg_rating_count', min(rating_count) over() as 'rating_count', max(rating_count) over() as 'max_rating_count'
from restaurants;

select *,
round(avg(cost) over (partition by cuisine)) as avg_cost_cuisine,
round(avg(cost) over (partition by city)) as avg_cost_city
from restaurants;