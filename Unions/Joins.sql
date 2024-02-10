select * from users.users_2021;
select * from users.users_2022;
select * from users.users_2023;

select * from users.users_2021, users.users_2022, users.users_2023;

#Common users from 2021 and 2022
select * from
users.users_2021 t1 inner join users.users_2022 t2 on t1.UserID=t2.UserID;

#Common users from 2021 and 2022 and 2023
select * from
users.users_2021 t1 inner join users.users_2022 t2 inner join users.users_2023 t3 on t1.UserID=t2.UserID=t3.UserID;

