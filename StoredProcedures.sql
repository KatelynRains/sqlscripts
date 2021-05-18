create or alter procedure FindUserByUsernameAndPassword
@username varchar(30)='',
@password varchar(30) = ''
as 
begin
	if @username = '' 
	begin
		print '@username is required!'
		return
	end;
	if @password <> ''
begin
	Select * 
		from Users
			where UserName = @username and Password = @password;
	end
	else
begin
	Select * 
		from Users
			where UserName = @username;
	end
	end;
go
	Exec FindUserByUsernameAndPassword krains, pass