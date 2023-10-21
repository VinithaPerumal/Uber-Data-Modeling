
create table customer(
customer_id int primary key,
customer_name varchar(20),
phone_no varchar(15),
Gender varchar(7),
country varchar(10),
DOB varchar(20),
Age int
);

desc customer;


insert into customer values(11,'Karthik','6379931231','male','India','26-july-2002',21);
insert into customer values(12,'Naina','8807645231','female','India','21-june-2006',17);
insert into customer values(13,'Riya','9834562734','female','India','02-september-2004',19);
insert into customer values(14,'Priya','9834562733','female','India','23-may-2003',20);
insert into customer values(15,'Babita','7334526719','female','India','03-october-2005',18);

