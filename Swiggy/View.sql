#Create view

-- create view res as (select name, city, rating from restaurants);
select * from res;

-- drop view if exists desserts;
-- create view desserts as (select * from restaurants where cuisine in ('Sweets','Waffle'));
select * from desserts;

#create a view of restaurants visited by atleast 100 people

drop view if exists Top_100;
create view Top_100 as (select * from restaurants where rating_count>=100);
select * from Top_100;
