---procedure to Delete a user to user table in PrsDB
create or alter procedure DeleteUser
	@Id int = 0
as 
begin
	if  not exists (SELECT 1 from Users where Id = @Id)
	begin
		print 'Not Found';
		return -2;
	end;
	Delete from Users 
		where Id = @Id;
	return 0; --if everything worked return 0
end;
go
exec DeleteUser 7;

Select * from Users;