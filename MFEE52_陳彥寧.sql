use my_titanic;

-- 1. 查詢各性別乘客的總人數，請顯示在sex與gender_counts這兩個欄位
select sex, count(sex) as gender_counts from full_passengers
group by sex;

-- 2.查詢第591至第883名乘客的id與姓名資料
select id, pname from full_passengers limit 590,293;

-- 3. 請找出所有的Anders & Alfrida Andersson家成員以及存活狀態
select * from full_passengers where pname like '%Andersson%'; 
select pname,survived from full_passengers where pname like '%Andersson%' and homedest like 'Sweden%';

-- 4.承上題，已知Afrida還有一個已婚的妹妹叫做Anna，請找出Anna與其丈夫
select * from full_passengers where pname like '%Brogren%'; 
select * from full_passengers where pname like '%Danbom%'; 

-- 5.找出所有名字是Leonard的男性乘客，顯示id, pclass, pname
select id,pclass,pname from full_passengers where pname like '% Leonard%' and sex ='male';

-- 6.查詢所有乘客持有的票券中，最多人持有的那一種ticket，回傳票券名稱(ticket)與持有人數(ticket_count)兩個欄位
select ticket,count(ticket) as ticket_count from full_passengers
group by ticket
having count(ticket)>10
order by count(ticket) desc;


-- 7.找出二等客艙以及三等客艙中所有男性乘客的平均年齡
select sex, avg(age) as '平均年齡'from full_passengers where pclass not in(1) and sex='male'
group by sex;

-- 8.列出所有登船點的登船人數與百分比，僅列出有明確登船地點的資料即可
select * from full_passengers;
select embarked as '登船點', 
count(embarked) as '登船人數',
round(count(embarked)*100/(select count(embarked)from full_passengers),2) as '登船點百分比'
from full_passengers
group by embarked
having count(embarked) >100;