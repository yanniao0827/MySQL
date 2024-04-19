use my_train_titanic;
-- 課堂範例 stored procedure 1
delimiter //
create procedure select_ports()
begin
	select*from ports;
end //
delimiter ;

call select_ports;

-- 課堂範例 stored procedure 2
delimiter //
create procedure ports_city(in portsid int)
begin
select city from ports where id = portsid;
end //
delimiter ;

call ports_city(1);
call ports_city(2);
call ports_city('Queentown'); #(X)

-- 課堂練習 p.147
delimiter //
create procedure pname_ports(in passenger_name varchar(100))
begin
  select * from passengers where name like passenger_name;
end //
delimiter ;

call pname_ports('%william%');
call pname_ports('%smith%');
