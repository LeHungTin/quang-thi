Create database C1709M
go
use C1709M
go
Create table Products(
	ProductId int primary key identity(1,1),
	ProductName nvarchar(200),
	Price float,
	ProductStatus bit
)
go
Create proc GetAllProduct
as
BEGIN
	Select * from Products where ProductStatus = 1;
END
go
Create proc InsertProduct
@productName nvarchar(200),
@price float,
@status bit
as
BEGIN
	Insert into Products
	values(@productName,@price,@status);
END
go
Create proc UpdateProduct
@productId int,
@productName nvarchar(200),
@price float,
@status bit
as
BEGIN
	Update Products
	set ProductName = @productName,
		Price = @price,
		ProductStatus = @status
	where ProductId = @productId;
END
go
Create proc DeleteProduct
@productId int
as
BEGIN
	Delete from Products Where ProductId = @productId;
END
go
Create proc GetProductById
@productId int
as
BEGIn
	Select * from Products where ProductId = @productId;
END