create database shop;
go 
use shop;
go 
create table users (
id int primary key identity(1,1),
username nvarchar(50) not null,
email nvarchar(100) not null,
pass nvarchar(100) not null,

);
create table orders (
id int primary key identity(1,1),
userid int not null,
date datetime default getdate(),
totalprice decimal(10,2),
foreign key (userid) references users(id)
); 

insert into users (username, email, pass)
values
('deneme', 'deneme@mail.com', '12345'),
('deneme1', 'deneme1@mail.com', '12345');

insert into orders (userid, totalprice)
values
(1, 250),
(2, 300);

alter table users
add birthdate date,
gender nvarchar(20),
telnr nvarchar(20),
adress nvarchar(150);

alter table orders
add orderdate date,
orderstatus nvarchar(25),
orderadress nvarchar(100);

select * from users;
select * from orders;