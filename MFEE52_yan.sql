use my_titanic;

-- 1.
select sex, count(sex) from full_passengers
group by sex;
