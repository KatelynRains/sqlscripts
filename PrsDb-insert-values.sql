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
