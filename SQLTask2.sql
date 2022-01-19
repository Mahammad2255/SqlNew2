CREATE DATABASE Task

USE Task

CREATE TABLE Departments
(
	Id int primary key identity,
	Name nvarchar(25) NOT NULL CHECK(LEN(Name) >=2)
)

CREATE TABLE Employees
(
	Id int primary key identity,
	FullName nvarchar(25) NOT NULL CHECK(LEN(FullName) >=3),
	Salary smallmoney NOT NULL CHECK(Salary>0),
	DepartmentId int references Departments(Id)
)