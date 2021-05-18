Create or alter procedure Fullname
	@firstname varchar(30),
	@lastname varchar(30)
as 
Begin
		select concat(@firstname,' ',@lastname) 'Fullname'
end;
go

declare @Fullname varchar(60);

exec @fullname = Fullname @firstName = 'Noah', @Lastname = 'Phence';

Print @fullname;

