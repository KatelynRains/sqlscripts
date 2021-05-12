select
c.Name CustomerName
,o.Date
,o.Description OrderDescription
,ol.Description ProductDesc
,ol.Product
,ol.Price
,ol.Quantity
,ol.Price * ol.Quantity LineTotal

from
Orders o
join Customers c on o.CustomerId = c.Id
join OrderLines ol on o.Id = ol.OrdersId

order by CustomerName