Create or alter procedure UpdateVendors

	@Id int,
	@Code varchar(30),
	@Name varchar(30),
	@Address varchar(30),
	@City varchar(30),
	@State char(2),
	@Zip char(5),
	@phone varchar(12),
	@email varchar(255)
as
begin
	--is vendor already existing?
	if not exists (Select 1 from Vendors where Id = @Id)
		begin
		print 'Vendor does not exist';
		return -1;
		end;

	Update Vendors set
	Code = @Code,
	Name = @Name,
	Address = @Address ,
	City = @City,
	State = @State,
	Zip = @Zip,
	Phone = @phone,
	Email = @email
	where Id=@Id
	return 0;
end;
go
exec UpdateVendors 5,'TAR','Target','123 Target rd', 'Minneapolis', 'MN', '55427', '952-955-4884', null;
Select * from Vendors