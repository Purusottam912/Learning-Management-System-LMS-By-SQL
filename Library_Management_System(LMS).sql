## creation of data base ##

create database library_management_system;

## Use of data base ##

use library_management_system;


## Creation of Three Table i.e Books, Members and Transactions. ##
 
 
create table Books (
Book_Id int primary key not null,
Book_name varchar (90),
Book_author_name varchar (52),
Book_Edition varchar (90),
ISBN int not null,
Publishers varchar (90),
Publicaton_date int not null,
Language varchar (78),
Descriptions varchar (100),
Availability int not null,
Book_categories varchar (90),
Book_price int not null,
Book_issue_date int not null,
Book_receive_date int not null
);

create table Members(
Member_id int primary key,
Name varchar (25),
Address varchar (50),
E_mail varchar (50),
Phone_Number int not null,
Membership_status varchar (50),
Join_date varchar (25)
);


create table Transactions(
Transaction_id int primary key,
Book_id int not null,
Member_id int not null,
Transaction_type varchar (50),
Transaction_date varchar (50)
);


## Insert Value In Three Tables All columns ##


insert into Books values (13, 'Rich dad poor dad' , 'Robert T Kiyosaki', '5th', 123201220, 'Penguine' , '2021', 'English' , 'Finance and Self help book', '20', 'Finance', '300', '12th April 2024', '15th April 2024');

insert into Members  values (32 , 'Rajiv' , 'New delhi', 'rajiv.chouhan@gmail.com', 8765984033, 'active' , '1st Jan 2024', 'CSE' , '152425');

insert into Transactions  values (33 , 13 , 32, 'borrowed','12th April 2024' );


## Modify Book_issue_date and Book_receive_date columns from Int to Varchar from Books Table by Using Alter Function##

alter table Books
modify Book_issue_date varchar (25);

alter table Books
modify Book_receive_date varchar (25);


## Add Two new columns name branch and roll_no,  in Members Table by using Alter function ##


alter table Members
add branch varchar (20),
add roll_no int not null;

## Modify Phone_number from int to Varchar because of range issues from Members tale by using Alter Table ##

Alter table Members
Modify Phone_number varchar (20);





