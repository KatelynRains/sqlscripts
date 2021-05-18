Create or alter procedure InsertNewProducts

	@PartNbr int = null,
	@Name varchar(30) = null,
	@Price decimal(11,2) = null,
	@Unit varchar(30) = null,
	@PhotoPath varchar(255) = null,
	@VendorName varchar(30) = null

as
begin
	if @VendorName = null
		begin
			print 'Vendor Name is Required'
			return -1; 
		end;
		declare @vendorid int = 0;
		Select top 1 @vendorid = Id from Vendors where name like @vendorname;  --how to capture data into variables using select statements
	--is Product already existing?
	if exists (Select 1 from Products where PartNbr = @PartNbr)
		begin
		print 'Product already exists';
		return -2;
		end;
	Insert into Products
		(PartNbr, Name, Price, Unit, PhotoPath, VendorId)
	Values
		(@PartNbr, @Name, @Price, @Unit, @PhotoPath, @vendorid)
		if @@ROWCOUNT <> 1
		begin 
			print 'ERROR: Insert failed'
			return -1;
		end;
	return 0;
end;
go
exec InsertNewProducts '4','Target Product',12, 'widget',null,'Target'
Select * from Products