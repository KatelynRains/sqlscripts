Use Master;
drop database if exists PRSDB;
Create Database PrsDB;
use PrsDb;

--********************
--Users Table
--********************
use PrsDb;
create table Users (
Id int primary key identity (1,1),
Username varchar(30) not null Unique,
Password varchar(30) not null,
Firstname varchar(30) not null,
Lastname varchar (30) not null,
Phone varchar(12),
Email varchar(255),
IsReviewer bit not null,
IsAdmin bit not null
);
--********************
--Vendors Table
--********************
use PrsDb;
create table Vendors (
Id int primary key identity (1,1),
Code varchar(30) not null unique,
Name varchar(30) not null,
Address varchar(30) not null,
City varchar(30) not null,
State char(2) not null,
Zip char(5) not null,
Phone varchar(12),
Email varchar(255)
);
--********************
--Products Table
--********************
use PrsDb;
create table Products (
Id int primary key identity (1,1),
PartNbr int not null unique,
Name varchar(30) not null,
Price decimal(11,2) not null,
Unit varchar(30) not null,
PhotoPath varchar(255),
VendorId int not null foreign key references Vendors(id)
);

--********************
--Requests Table
--********************
use PrsDb;
create table Requests (
Id int primary key identity (1,1),
Description varchar(80) not null,
Justification varchar(80) not null,
RejectionReason varchar (80),
DeliveryMode varchar(20) not null default('Pickup'),
Status varchar(10) not null default('NEW'),
Total decimal(11,2) not null default(0),
UserId Int not null foreign key references Users(Id)
);

--********************
--RequestLines Table
--********************
use PrsDb;
create table RequestLiness (
Id int primary key identity (1,1),
RequestId int not null foreign key references Requests(Id),
ProductId int not null foreign key references Products(Id),
Quantity int not null default (1)
);









