-- 課本空值範例
create table cars(
car_brand varchar(50) not null,
car_color varchar(50) not null,
car_sale_price int
);

insert into cars(car_brand, car_color, car_sale_price)
values
('Luxgn','blue', 50000),
('Ford','white',null);
show warnings;
select*from cars;

-- 課堂練習預設值空值p.64
create table cars_03(
car_brand varchar(50) default 'unknown',
car_color varchar(50) default 'unknown',
car_sale_price int default 50000
);

insert into cars_03(car_brand, car_color, car_sale_price)
values
(null, 'black', null);
insert into cars_03(car_color)
values
('black');
insert into cars_03(car_brand,car_color)
values
('Toyota',null),
('Honda',null);
show warnings;
desc cars_03;
select*from cars_03;
