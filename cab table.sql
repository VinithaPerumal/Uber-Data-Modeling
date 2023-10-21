create table cab(
cab_id int primary key,
cab_model varchar(15),
cab_brand varchar(15),
cab_type varchar(10)
);

insert into cab values(31,'car','Innova','with AC');
insert into cab values(32,'Auto_rickshaw','Mahindra Alfa','Non AC');
insert into cab values(33,'car','Indica','with AC');
insert into cab values(34,'car','Toyota','with AC');
insert into cab values(35,'car','Indica','with AC');

desc cab;