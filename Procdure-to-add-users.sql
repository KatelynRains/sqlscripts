---procedure to add users to user table in PrsDB
create or alter procedure AddUser
	@username varchar(30) = '',
	@password varchar(30) = '',
	@firstname varchar(30) = '',
	@lastname varchar(30) = '',
	@Phone varchar(12) = null,
	@email varchar(255) = null,
	@isreviewer bit = false,
	@isadmin bit = false
as 
begin
	if @username = '' or @password = '' or @firstname = '' or @lastname = ''
	begin
		print 'Required data is not provided';
		return -1; --if it didnt work return -1
	end;
	--is username already taken?
	if exists (SELECT 1 from Users where Username = @username)
	begin
		print 'Username already exists - select another!';
		return -2;
	end;

	Insert into Users 
		(Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
		values
		(@username, @password, @firstname, @lastname, @Phone, @email, @isreviewer, @isadmin);
	return 0; --if everything worked return 0
end;
go
exec AddUser 'xx1', 'xx', 'xx', 'xx';

--Select * from Users