-- 課堂練習 p.138
select * from passengers where portId != 2 and portId !=3 and sex != 'female';
select * from passengers where portId not in(2,3) and sex not in('female');