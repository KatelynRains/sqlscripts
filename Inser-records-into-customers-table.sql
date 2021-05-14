insert into Customers (Code,Name)
VALUES ('TQL', 'Total Quality Logistics');
insert into Customers (Code,Name)
VALUES ('TQL', 'Should not work');
insert into Customers (Code,Name, Sales)
VALUES ('MAX', 'Max Technical Training', -200);
go
select *
from Customers