use my_database;

-- 課本範例表格 
create table members(
member_id int,
member_name varchar(50),
member_gender varchar(20),
member_age int
);
show tables;

-- 課堂練習表格p.52
create table player_02(
player_id int,
player_name varchar(50),
player_age int,
player_salary int,
player_team varchar(50)
);

-- 課堂練習表格p.55
create table employee(
employee_id int,
employee_name varchar(50),
employee_age int,
employee_salary int,
employee_department varchar(50)
);
desc employee;
insert into employee (employee_id, employee_name,employee_age,employee_salary,employee_department)
values
(1,'Tim',39,100000,'Sales'),
(2,'Danny',27,33000,'Accounting'),
(3,'Wilson',33,42000,'Administration'),
(4,'Elizabeth',22,29000,'Accounting');
select*from employee;

-- 11111