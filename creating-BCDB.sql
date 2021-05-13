Use master;
Create database Bootcamp;
Use Bootcamp;
Create Table Students (
	Id int primary key identity (1,1),  --tells sql to make first one 1 then increase by 1; primary keys cannot be null
	Firstname varchar(30) not null, --nvarchar for symbolic languages - all columns in SQL are NULL by default
	Lastname varchar (30) not null,
	Address varchar (50) not null,
	City varchar(50) not null,
	StateCode char(2) not null,
	Zip varchar(10) not null,
	AssessmentScore int not null
);
Use Bootcamp;
Create Table Assessments (
	Id int Primary key Identity(1,1),
	StudentId int not null foreign key references Students(Id), --foreign key; format needs to match the primary key format
	Topic varchar(30) not null,
	Score int not null
);