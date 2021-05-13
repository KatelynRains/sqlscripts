
---Insert yourself into Customer Table, MAKE SALES 0, MAKE ACTIVE
Insert into Customers (Name, City, State, Sales, Active)
VALUES ('KATELYN RAINS', 'Villa Hills', 'KY', 0, 1);
select *
from Customers

--ADD ORDER
Insert into Orders (CustomerId, Date, Description)
VALUES ((Select ID from Customers where Name like 'Kate%'),'2021-05-13', 'Test Order');

--ADD ORDER LINES WITH QTY OF 1, 2, 3
Insert into OrderLines (OrdersId,Product, Description, Quantity, Price)
VALUES 
((Select ID from Orders where Description like 'Test%'),'Widget1','Widget 1 Description',1,1),
((Select ID from Orders where Description like 'Test%'),'Widget2', 'Widget2 Description',2,2),
((Select ID from Orders where Description like 'Test%'),'Widget3', 'Widget3 Description',3,3);
