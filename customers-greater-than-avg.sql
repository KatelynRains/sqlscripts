select
c.id,
c.name,
c.Sales

from
Customers c 
where
Sales > 
	(select 
		avg(Sales) AverageSales
		from
		Customers)