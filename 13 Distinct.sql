-- 課堂練習 p.131
#如果不加distinct，會跑出891，不是我們要的結果，我只想知道有幾種pclass
select count(distinct pclass) class_count from passengers;
