#Operators with Joins

select * from
users.users_2021 t1 left join users.users_2022 t2 on t1.UserID=t2.UserID
union
users.users_2021 t1 right join users.users_2022 t2 on t1.UserID=t2.UserID;
