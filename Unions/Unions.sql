#All users from 2021 and 2022 with no repetition
select * from users.users_2021 union select * from users.users_2022;

#All users from 2022 and 2023 with no repetition (means duplicates get removed)
select * from users.users_2022 union select * from users.users_2023;

#All users from 2021 and 2022 and 2023 with no repetition (means duplicates get removed)
select * from users.users_2021 union select * from users.users_2022 union select * from users.users_2023;

#All users from 2021 and 2022 and 2023 with no repetition (means duplicates get removed)
select * from users.users_2023 union select * from users.users_2022 union select * from users.users_2021;

#All users from 2021 and 2022 and 2023 with repetition (means duplicates do not get removed)
select * from users.users_2023 union all select * from users.users_2022 union all select * from users.users_2021;
