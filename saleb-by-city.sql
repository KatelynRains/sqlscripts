select
City
,sum(Sales) CitySales
from
Customers
group by
City
having Sum(Sales) >600000
