select name, bonus from Employee  left join Bonus using(empid)
where bonus < 1000 or bonus is null
