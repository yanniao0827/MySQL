select * from passengers where name like '%william%';

select * from passengers where name like '% william %';

select * from passengers where name like '% william %' and sex='male';

select * from passengers where name like '% william %' and sex='male' and ticketId like '__';