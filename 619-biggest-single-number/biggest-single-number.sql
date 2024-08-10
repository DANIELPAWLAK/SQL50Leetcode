select IFNULL((select num from myNumbers group by num having count(num) <= 1 order by num desc limit 1), NULL) as num
