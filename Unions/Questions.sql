#Select new users added in 2022
select * from users.users_2022 except select * from users.users_2021;

#Select users in database that are there except those there in all 3 years
select * from users.users_2023 union select * from users.users_2022 union select * from users.users_2021 except select * from users.users_2023 intersect select * from users.users_2022 intersect select * from users.users_2021;

