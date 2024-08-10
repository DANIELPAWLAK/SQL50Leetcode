select
    Products.product_name,
    sum(Orders.unit) as unit
from 
    Products join Orders
on 
    Products.product_id = Orders.product_id
    and
    orders.order_date between '2020-02-01' and '2020-02-29'
group by 
    orders.product_id
having 
    sum(Orders.unit) >= 100;