-- [index, count]
select * from passengers limit 5, 20; #跳過前5筆，數20筆
-- offset
select * from passengers limit 20 offset 5; #數20筆，跳過前5筆
#index跟offset兩者跑出來的結果相同，只是寫法不同

-- page，在前端可以用作分頁資料，如第一頁顯示1-20，第二頁顯示21-40
select * from passengers limit 0, 20;
select * from passengers limit 20, 20;
select * from passengers limit 40, 20;

-- 課堂練習 p.128
select * from passengers order by portId limit 2,15;




