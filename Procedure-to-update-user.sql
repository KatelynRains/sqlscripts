---procedure to update a user to user table in PrsDB
create or alter procedure UpdateUser
	@Id int = 0,
	@username varchar(30),
	@password varchar(30),
	@firstname varchar(30),
	@lastname varchar(30),
	@Phone varchar(12),
	@email varchar(255),
	@isreviewer bit,
	@isadmin bit
as 
begin
	if  not exists (SELECT 1 from Users where Id = @Id)
	begin
		print 'Not Found';
		return -2;
	end;
	Update Users set
		Username = @username, 
		Password = @password, 
		Firstname = @firstname, 
		Lastname = @lastname, 
		Phone = @Phone, 
		Email = @email, 
		IsReviewer = @isreviewer, 
		IsAdmin = @isadmin
		where Id = @Id;
	return 0; --if everything worked return 0
end;
go
exec UpdateUser 2, 'Krains','Password','Katelyn','Rains',null,'krains@tql.com',1,1;

Select * from Users;