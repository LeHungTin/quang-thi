Create database DB_EJB_C1709M
go
use DB_EJB_C1709M
go
create table Category(
	CateId int identity primary key,
	CateName nvarchar(100) not null unique)


create table Product(
	ProId int identity primary key,
	ProName nvarchar(100),
	CateId int foreign key references Category(CateId),
	Producer nvarchar(100),
	YearMaking int,
	ExpireDate datetime,
	Price float)

insert into Category values (N'Điện tử')
insert into Category values (N'Điện lạnh')
insert into Category values (N'Điện công nghiệp')
insert into Category values (N'Thời trang nam')
insert into Category values (N'Thời trang nữ')
insert into Category values (N'Điện thoại')

select * from Category
insert into Product values (N'Tủ lạnh Sanyo',2,'Sanyo',2019,'2020-01-01',7000000)
insert into Product values (N'Điện thoại Iphone 7',6,'Apple',2019,'2020-01-01',13000000)
insert into Product values (N'Máy tính acer core i3',1,'Acer',2019,'2022-01-01',9000000)

