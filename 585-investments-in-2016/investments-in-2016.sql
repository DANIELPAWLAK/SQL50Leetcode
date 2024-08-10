with cte as (select *, count(tiv_2015) over(partition by tiv_2015) as tiv_cnt from insurance)
select round(sum(tiv_2016),2) as tiv_2016 from cte 
where tiv_cnt > 1 and (lat,lon) in 
(select lat,lon from insurance group by lat,lon having count(*) = 1)  