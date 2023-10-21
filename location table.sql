
drop table location;

create table location(
location_id int primary key,
start_location varchar(20),
end_location varchar(20),
start_location_pincode int,
end_location_pincode int
);

insert into location values(20,'chennai','Vellore','600001','632001');
insert into location values(21,'Kanyakumari','Devagiri','629702','515871');
insert into location values(22,'Tiruchirappalli ','Mayiladuthurai',' 620001','609001');
insert into location values(23,'Visakhapatnam','Kallakurichi ','530001','606202');
insert into location values(24,'Guindy','Nagari','600032','517590');

desc location;


select name from driver where abs(to_date(login_date) - to_date(logout_date))>120;