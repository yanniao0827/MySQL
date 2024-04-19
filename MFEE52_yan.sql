use my_titanic;

-- 1.
select sex, count(sex) from full_passengers
group by sex;

-- 2.
select id, pname from full_passengers limit 590,293;