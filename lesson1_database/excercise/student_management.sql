create database student_management;

use student_management; 

create table student (
	id int auto_increment,
    name varchar(100),
    age int,
    country varchar(255),
    primary key (id)
);

use student_management;

create table teacher (
	id int auto_increment,
    name varchar(100),
    age int,
    country varchar(255),
    primary key (id)
);

use student_management;

create table class (studentstudent
	id int auto_increment,
    name varchar(100),
    primary key (id)
);