-- 課堂範例subquery

-- 1.先找二等艙最老是幾歲
select max(age) from passengers where pclass=2;
-- 2.再找大於該歲數的有誰
select*from passengers where age >70;
-- 3.將兩個select合併
select pclass, name, age
from passengers where age>(select max(age) from passengers where pclass=2);

select * from passengers where age > (select max(age) from passengers where pclass = 2);
