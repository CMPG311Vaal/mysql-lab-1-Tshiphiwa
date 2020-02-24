
29684447 T SAMBO


1.

CREATE database BidvestBank;
SHOW databases;
USE BidvestBank;

2.

create table BankBranch(
		branch_name VARCHAR(50) NOT NULL PRIMARY KEY,
		branch_city VARCHAR(50) NOT NULL,
		assets VARCHAR(20)
		);

create table Customer(
		customer_name VARCHAR(50) NOT NULL PRIMARY KEY,
		customer_street VARCHAR(50),
		customer_city VARCHAR(50)
);

create table CustomerAccount(
		account_number VARCHAR(20) NOT NULL PRIMARY KEY,
		branch_name VARCHAR(50),
		balance DOUBLE
);

create table Loan(
		loan_number VARCHAR(20) NOT NULL PRIMARY KEY,
		branch_name VARCHAR(50) NOT NULL,
		amount DOUBLE
);

create table Depositor(
		customer_name VARCHAR(50) NOT NULL,
		account_number VARCHAR(50) NOT NULL PRIMARY KEY
);

create table Borrower(
		customer_name VARCHAR(50) NOT NULL,
		loan_number varchar(20) PRIMARY KEY
);

create table Employee(
		employee_name VARCHAR(50) NOT NULL PRIMARY KEY,
		branch_name VARCHAR(50) NOT NULL,
		salary DOUBLE NOT NULL
);

3.

insert into BankBranch values('Midrand','Johannesburg', 7100000);
insert into BankBranch values('Newtown','Johannesburg', 9000000);
insert into BankBranch values('Mabopane','Pretoria',400000);
insert into BankBranch values('Belgravia','Kimberly',3700000);
insert into BankBranch values('Sunnyside','Pretoria',1700000);
insert into BankBranch values('Amanzimtoti','Durban',300000);
insert into BankBranch values('Universitas','Bloemfontein',2100000);
insert into BankBranch values('Mamelodi','Pretoria',8000000);

insert into Customer values('Modise', 'Spring', 'George');
insert into Customer values('Brooks', 'Senator', 'Johannesburg');
insert into Customer values('Jooste', 'North', 'Kimberly');
insert into Customer values('Lombard', 'Sand Hill', 'Nelspruit');
insert into Customer values('Mokwena', 'Walnut', 'Port-Elizabeth');
insert into Customer values('Johnson', 'Mmabatho', 'Mafikeng');
insert into Customer values('Johnson', 'Alma', 'Bloemfontein');
insert into Customer values('Zwane', 'Main', 'Mafikeng');
insert into Customer values('Lindsay', 'Park', 'George');
insert into Customer values('Smith', 'North', 'Kimberly');
insert into Customer values('Dlamini', 'Putnam', 'Port-Elizabeth');
insert into Customer values('Williams', 'Nassau', 'Giyane');

insert into CustomerAccount values('A-5324','Newtown',500);
insert into CustomerAccount values('A-5624','Sunnyside',400);
insert into CustomerAccount values('A-7794','Midrand',900);
insert into CustomerAccount values('A-4467','Mabopane',700);
insert into CustomerAccount values('A-3546','Midrand',750);
insert into CustomerAccount values('A-3453','Universitas',700);
insert into CustomerAccount values('A-2542','Mamelodi',350);

insert into Loan values('L-11','Mamelodi',900);
insert into Loan values('L-14','Newtown',1500);
insert into Loan values('L-15','Sunnyside',1500);
insert into Loan values('L-16','Sunnyside',1300);
insert into Loan values('L-17','Newtown',1000);
insert into Loan values('L-23','Universitas',2000);
insert into Loan values('L-93','Mabopane',500);

insert into Depositor values('Johnson','A-5624');
insert into Depositor values('Johnson','A-5624');
insert into Depositor values('Johnson','A-7794');
insert into Depositor values('Zwane','A-3546');
insert into Depositor values('Lindsay','A-3453');
insert into Depositor values('Smith','A-4467');
insert into Depositor values('Johnson','A-2542');

insert into Borrower values('Modise','L-16');
insert into Borrower values('Jooste','L-93');
insert into Borrower values('Johnson','L-15');
insert into Borrower values('Jackson','L-14');
insert into Borrower values('Zwane','L-17');
insert into Borrower values('Smith','L-11');
insert into Borrower values('Smith','L-23');
insert into Borrower values('Williams','L-17');

insert into Employee values('Modise','Sunnyside',1500);
insert into Employee values('Brown','Sunnyside',1300);
insert into Employee values('Gopal','Sunnyside',5300);
insert into Employee values('Johnson','Newtown',1500);
insert into Employee values('Loreena','Newtown',1300);
insert into Employee values('Peterson','Newtown',2500);
insert into Employee values('Rao','Austin',1500);
insert into Employee values('Sato','Austin',1600);

################################################################################################################################################
4.

i. select * FROM CustomerAccount where balance < 700;

ii. select customer_name from Customer where customer_city = 'Johannesburg'; 

iii. select * from Employee where salary > 1500 AND branch_name<>'Newtown';

iv. select avg(salary) from employee;

v. Select * from BankBranch where assets=(Select MAX(assets) from BankBranch);


5.

i.   select employee_name from Employee where branch_name = 'Sunnyside'; 

ii.  select * from Borrower;

iii. select account_number from CustomerAccount where balance > 900; 

iv.  select account_number, balance from CustomerAccount where branch_name = 'Newtown' and balance>600; 

v.   select branch_name, assets from BankBranch; 