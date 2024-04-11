use my_database;
-- 課堂範例CRUD
create table player(
player_id int not null primary key auto_increment,
player_name varchar(50),
player_position varchar(50),
player_age int
);
insert into player(player_name,player_position,player_age)
values
('Bobby','INF',23),
('Luis','P',30),
('Jonah','C',28),
('Framber','P',30),
('Pete','P',27),
('Matt','INF',29),
('Corbin','OF',23),
('Juan','OF',28);
select*from player;

select player_name,player_age from player;
select player_id,player_name,player_age from player;

-- 課堂範例CRUD where子句
select*from player where player_age>=28;
#即使是小寫還是能查詢成功，因為MySQL對大小寫不敏感
select*from player where player_name='luis';

-- 課堂練習CRUD p.83
create table grocery(
grocery_id  int not null primary key auto_increment,
grocery_name varchar(50),
grocery_category varchar(50),
grocery_reserves int
);
insert into grocery(grocery_name,grocery_category,grocery_reserves)
values
('Beef','Meat',13),
('Milk','Dairy',15),
('Spinach','Vegetables',20),
('Cheese','Dairy',5),
('Pork','Meat',8),
('Beer','Beverage',60),
('Cabbage','Vegetables',21),
('Lamb','Meat',16);
-- select結果1
select grocery_name, grocery_category, grocery_reserves from grocery;
-- select結果2
select grocery_id, grocery_name from grocery where grocery_id between 3 and 7;
-- select結果3
select grocery_id, grocery_name, grocery_category from grocery where grocery_category = 'meat';

-- 課堂範例CRUD Aliases別名alter
#as可省略，as不會去影響設定，只是方便結果顯示而已，如果字跟字之間有空白，把字用''包起來
select player_name as 姓名, player_position as 守位, player_age as 年齡 from player;

-- 課堂範例CRUD update
select*from player where player_position ='P';
# 如果不打where，所有position欄位內的值都會變成Pitcher
update player set player_position='Picther'
where player_position='P';
select*from player;

select*from player where player_name='Pete';
update player set player_position='OF'
where player_name='Pete';
select*from player;

-- 課堂練習CRUD p.87
-- 練習1
select*from player where player_name='Bobby';
update player set player_age=26
where player_name='Bobby';
select player_name, player_age from player where player_name='Bobby';
-- 練習2
select*from player where player_name='Jonah';
update player set player_name='Jonathan'
where player_name='Jonah';
# 如果使用and連接，代表我們要找一筆資料代表這個人同時叫Jonathan跟Bobby，不會有資料符合這個條件
select player_name, player_age from player where player_name='Jonathan' or player_name='Bobby';

-- 課堂範例CRUD delete
select*from player where player_name='Jonathan';
delete from player
where player_name='Jonathan';
select*from player;