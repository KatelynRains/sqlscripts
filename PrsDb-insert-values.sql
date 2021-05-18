Insert into Users
(Username, Password, FirstName, LastName, Phone, Email, IsReviewer, IsAdmin)
values
('JSmith', 'Password', 'John', 'Smith', '123-456-7890', 'jsmith@tql.com',0,1),
('Krains', 'Password1', 'Katelyn', 'Rains', '952-738-1597', 'krains@tql.com',1,0),
('MDHoff', 'Password2', 'Mike', 'Hoff', '513-456-7890', 'MDHoff@tql.com',1,0);

Insert into Vendors
(Code, Name, Address, City, State, Zip, Phone, Email)
values 
('KRO','Kroger', '123 Vine St.', 'Cincinnati','OH','45014','523-453-6745','Vendors@kroger.com'),
('AMA','Amazon', '410 Terry Ave. N', 'Seattle','WA','98109','800-522-6645','amazon-ir@amazon.com'),
('GOO','Google', '1600 Amphitheatre Pkwy', 'Mountain View','CA','94043','123-453-8740','Vendors@gmail.com');

Insert into Products
(PartNbr, Name, Price, Unit, Photopath, VendorId)
values 
('1','Amazon Echo',200, 'Echo','Photopath1',(select ID from Vendors where Code = 'AMA')),
('2','Google Chromebook',500, 'Chrome Book','Photopath2',(select ID from Vendors where Code = 'GOO')),
('3','Kroger Widget',10, 'Widget','Photopath3',(select ID from Vendors where Code = 'KRO'));

Insert into Requests
(Description, Justification, RejectionReason, DeliveryMode, Status, Total, UserId)
values 
('Requests1','Justification1','RejectionReason1','DeliveryMode1','Status1',100,(Select Id from Users where Username = 'Jsmith')),
('Requests2','Justification2','RejectionReason2','DeliveryMode2','Status2',200,(Select Id from Users where Username = 'krains')),
('Requests3','Justification3',null,'DeliveryMode3','Status3',300,(Select Id from Users where Username = 'MDHoff'));


Insert into RequestLiness
(RequestId, ProductId, Quantity)
values 
((Select Id from Requests where Description like '%1'), (Select Id from Products where unit = 'Echo'), 1),
((Select Id from Requests where Description like '%2'), (Select Id from Products where unit = 'Chrome Book'), 2),
((Select Id from Requests where Description like '%2'), (Select Id from Products where unit = 'Widget'), 3);
