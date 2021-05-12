-- List customers with sales less than the average of all customer sales
Select *
	from
	Customers
	where Sales < (Select avg(Sales) from Customers)
	order by Sales desc