#Shows all data from table 1 which is not there in table 2

select * from users.users_2021 except select * from users.users_2022;

# Intersect - Shows the common values from tables

select * from users.users_2023 intersect select * from users.users_2022 intersect select * from users.users_2021;
