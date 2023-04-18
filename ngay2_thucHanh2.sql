CREATE DATABASE QuanLySinhVien;
USE QuanLySinhVien;
CREATE TABLE Class(
classId int  not null primary key auto_increment,
className varchar(60) not null,
StartDate datetime not null,
`status` bit 
);
CREATE TABLE Student(
studentId int not null primary key auto_increment,
studentName varchar(30) not null ,
address varchar(50),
phone varchar(20),
stastus bit,
classID int not null ,
foreign key (classID) references Class(classID)
);
CREATE TABLE Subject(
subId int not null primary key auto_increment,
SubName varchar(30) not null,
Credit tinyint not null default 1,
 check(Credit>=1),
 status bit default 1
);
CREATE TABLE Mark(
markID int primary key not null auto_increment,
subId int not null unique,
StudentId INT NOT NULL,
Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
ExamTimes TINYINT DEFAULT 1,
UNIQUE (SubId, StudentId),
FOREIGN KEY (subId) REFERENCES Subject (subId),
FOREIGN KEY (StudentId) REFERENCES Student (studentId)
);
drop database QuanLySinhVien