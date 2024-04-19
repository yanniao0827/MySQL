use my_train_titanic;
select * from passengers;

-- 課本範例 group by& aggregation
select pclass, count(pclass) from passengers
group by pclass;
select sex, count(sex) from passengers
group by sex;

-- 課堂練習 group by& aggregation p.119
-- 1.
select sex, avg(age) from passengers
group by sex;
-- 2.
select pclass, max(age) from passengers
group by pclass;
-- 3.
select pclass, min(age) from passengers
group by pclass;

-- 課本範例 group by& aggregation加join
create table artists(
id int not null primary key auto_increment,
artist_name varchar(50) not null unique
);

create table songs(
id int not null primary key auto_increment,
song_name varchar(50) not null,
artist_id int,
foreign key(artist_id) references artists(id) on delete cascade
);

insert into artists(artist_name)
values('Bruno Mars'), ('Jay Sean'), ('Usher'), ('Sean Kingston');

insert into songs(song_name, artist_id)
values('Just the way you are', 1), ('Treasure', 1), ('Down', 2), ('Yeah', 3), ('DJ got us fall in love again', 3), ('Beautiful girls', 4);

select * from artists;
select * from songs;

select *
from artists
join songs
on artists.id =artist_id;

select artist_name, count(artist_id) as 'numbers of songs'
from artists
join songs
on artists.id =artist_id
group by artist_name;

-- 再新增一個條件having
select artist_name, count(artist_id) 'numbers of songs'
from artists
join songs
on artists.id = artist_id
group by artist_name
having count(artist_id) > 1;

-- 課堂練習 p.121
select city, count(city) 'boarding counts'
from passengers
join ports
on portid = ports.id
group by city
having count(city) > 100;