drop database uber;
create database uber;

create table driver(
driver_id int primary key,
name varchar(15),
phone_no varchar(15),
license_no varchar(30),
license_expiry_date varchar(20),
login_date varchar(20),
logout_date varchar(20)
);

insert into driver values(1,'Anirudh','9876543120','KA0419920009646','20-July-2023','02-june-2021','03-august-2022');
insert into driver values(2,'Amir','8965437690','KL0520140009308','23-february-2023','03-may-2022','06-july-2022');
insert into driver values(3,'Amar','7765438969','MH1420110062821','30-june-2023','13-september-2022','12-october-2022');
insert into driver values(4,'Anush','7893428969','TN1673410062821','31-december-2022','04-january-2021','03-march-2022');
insert into driver values(5,'sam','9834562211','KL0345875610022','30-september-2022','12-march-2021','03-april-2022');

desc driver;