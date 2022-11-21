create database MyDb

use MyDb

create table Product(
	ProductId int not null primary key,
	LastName varchar(255),
	FirstName varchar(255),
	Age int
)

create table Category(
	CategoryId int not null primary key,
	LastName varchar(255),
	FirstName varchar(255),
	Age int
)
create table ProductCategory(
	ProductCategoryId int not null primary key,
	ProductId int foreign key references Product(ProductId),
	CategoryId int foreign key references Category(CategoryId)
)

insert into Product(ProductId,LastName,FirstName,Age)
values (1,'name1','name1',15),(2,'name2','name2',16),(3,'name3','name3',16)


insert into Category(CategoryId,LastName,FirstName,Age)
values (1,'name1','name1',15),(2,'name2','name2',16),(3,'name3','name3',16)

insert into ProductCategory(ProductCategoryId,ProductId,CategoryId)
values(1,1,1),(2,1,2)

select Product.FirstName, Category.FirstName 
from Product
left join ProductCategory on ProductCategory.ProductId = Product.ProductId
left join Category on Category.CategoryId = ProductCategory.CategoryId
