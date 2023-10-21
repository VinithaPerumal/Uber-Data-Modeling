create table cancellation(
cancel_id int primary key,
cancel_reason varchar(20),
cancel_fee int);

insert into  cancellation values(71,'Medical reasons',50);
insert into  cancellation values(72,'natural disasters',70);
insert into  cancellation values(73,'Financial default',75);
insert into  cancellation values(74,'Involuntary layoff',90);
insert into  cancellation values(75,'weather',55);

desc cancellation;
