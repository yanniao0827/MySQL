create database
social_media_app;
use social_media_app;

-- 課本範例Foreign key
create table users(
id int not null primary key auto_increment,
user_name varchar(200)
);
insert into users(user_name)
values
('Amanda'),
('Brian'),
('Cally'),
('Daniel'),
('Edward');
create table photos(
id int not null primary key auto_increment,
photo_url varchar(200),
user_id int,
#photos表格中的user_id欄位參考了users表格中的id欄，所以如果要刪除users表格的時候會失敗，因為users被參考了，不能被隨意刪掉
foreign key (user_id) references users(id)
);

-- 課本範例Foreign key cascade
create table photos_02(
id int primary key auto_increment,
photo_url varchar(200),
user_id int,
foreign key(user_id) references users(id) on delete cascade
);
insert into photos_02(photo_url,user_id)
values
('https://50vO5C2qYeQBPfvV.png', 1), ('https://9939P61ncLk0zT7l.png', 1),
('https://IDiRYiItNd5TC2h9.png', 2), ('https://LsrdCdC0dhjrjteg.png', 2),
('https://TKHN7Fnmeoepeahw.png', 3), ('https://ajG9183iiGYHoReq.png', 3),
('https://edJKy1VdLkZ8wv5W.png', 4), ('https://nbiLUDgfCwI4ubWE.png', 4),
('https://pfhednPD67rDnreQ.png', 5), ('https://uxlInX2oBS6YtBiG.png', 5);
select * from photos_02;
delete from users where id=3;
select*from photos_02;

-- 課本範例Foreign key set null
create table photos_03(
id int primary key auto_increment,
photo_url varchar(200),
user_id int,
foreign key(user_id) references users(id) on delete set null
);
insert into photos_03(photo_url,user_id)
values
('https://50vO5C2qYeQBPfvV.png', 1), ('https://9939P61ncLk0zT7l.png', 1),
('https://IDiRYiItNd5TC2h9.png', 2), ('https://LsrdCdC0dhjrjteg.png', 2),
 # 因為前將users中第3筆資料刪除，所以這裡就不用輸入第3筆資料的值
('https://edJKy1VdLkZ8wv5W.png', 4), ('https://nbiLUDgfCwI4ubWE.png', 4),
('https://pfhednPD67rDnreQ.png', 5), ('https://uxlInX2oBS6YtBiG.png', 5);

select*from photos_03;
