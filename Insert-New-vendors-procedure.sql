Create or alter procedure InsertNewVendors

	@Code varchar(30) = '',
	@Name varchar(30) = '',
	@Address varchar(30) = '',
	@City varchar(30) = '',
	@State char(2) = '',
	@Zip char(5) = '',
	@phone varchar(12) = null,
	@email varchar(255) = null
as
begin
	if @code = '' or @name = '' or @Address = '' or @City = '' or @State = '' or @zip = ''
		begin
			print 'required data is not provided'
			return -1; 
		end;
	--is username already existing?
	if exists (Select 1 from Vendors where code = @code)
		begin
		print 'Vendor already exists';
		return -2;
		end;
	Insert into Vendors
		(Code, Name, Address, City, State, Zip, Phone, Email)
	Values
		(@code, @name, @Address, @city, @state, @zip, @phone, @email);
	return 0;
end
go
exec InsertNewVendors'TAR','Target','123 Target rd', 'Minneapolis', 'MN', '55427', null, null;
Select * from Vendors