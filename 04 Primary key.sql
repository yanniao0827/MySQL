-- 課堂範例主鍵
create table cars_04(
car_id int primary key,
car_brand varchar(50),
car_color varchar(50),
car_sale_price int
);

insert into cars_04 (car_id, car_brand)
values(1,'Luxgen');
#primary一定要設定值，否則會跳出錯誤，同一個主key也不能重複設定
insert into cars_04 (car_id,car_brand)
values(2,'Luxgen');
show warnings;
select*from cars_04;

-- 課堂練習主鍵 p.74
create table my_product(
product_id int not null primary key auto_increment,
product_name varchar(50),
product_price int
);
alter table  my_product auto_increment =20;
insert into my_product(product_name,product_price)
values
('apple',20),
('banana',30),
('papaya',40),
('mango',50),
('grape',60);

select*from my_product;
desc my_product;
show warnings;

-- 5555