select * from restaurants;

select *, rank() over (order by cost desc) as 'rank' from restaurants;

#Rank every restaurants from most visited to least visited

select *, rank() over (order by rating_count desc) as 'Visits' from restaurants;

#Most expensive to least expensive as per city - Rank and Dense Rank

select *, rank() over (partition by city order by cost desc) as 'Cost',
dense_rank() over (partition by city order by cost desc) as 'Dense_Cost' from restaurants;

#Most expensive to least expensive as per city - Row Number

select *, row_number() over (partition by city order by cost desc) as 'Row_Cost' from restaurants;

#Top restaurants based on revenue for every city

select *, rating_count*cost as 'Revenue', row_number() over (partition by city order by rating_count*cost desc) as 'Revenue_Rank' from restaurants;

#Top 5 restaurants based on revenue for every city

select * from (select *, rating_count*cost as 'Revenue', row_number() over (partition by city order by rating_count*cost desc) as 'Revenue_Rank' from restaurants) t where t.Revenue_Rank<=5;

#Top 5 restaurants of every cuisine based on revenue

select * from (select *, rating_count*cost as 'Revenue', row_number() over (partition by cuisine order by rating_count*cost desc) as 'Revenue_Rank' from restaurants) t where t.Revenue_Rank<=5;

#Top 5 cuisines from above

select cuisine, rating_count*cost from (select *, rating_count*cost as 'Revenue', row_number() over (partition by cuisine order by rating_count*cost desc) as 'Revenue_Rank' from restaurants) t where t.Revenue_Rank<=5
group by cuisine
order by sum(rating_count*cost) desc limit 5;


