drop table trip;

create table trip(
trip_id int primary key,
trip_start_time varchar(50),
trip_end_time varchar(50),
trip_status varchar(20),
trip_distance int,
trip_date varchar(20),
route varchar(20),
promocode varchar(12),
fare_amount float,
customer_id int  references customer(customer_id),
driver_id int  references driver(driver_id),
cab_id int references cab(cab_id),
location_id int references location(location_id),
payment_id int  references payment(payment_id),
feedback_id int  references feedback(feedback_id),
cancel_id int  references cancellation(cancel_id)

);



insert into trip values(41,'16-January-2023 01:00:00','16-January-2023 12:02:00','Booked','440','16-January-2023','Madurai','Templecity','500',11,1,31,21,51,61,71);


insert into trip values(42,'03-March-2022 05:00:00','03-March-2022 08:15:00','completed','100','03-March-2022','Sriperumbudur','Templecity','100',12,2,32,22,52,62,72);


insert into trip values(43,'05-September-2021 08:00:00','05-September-2021 11:12:00','completed','150','05-September-2021','Vellore','Templecity','90',13,3,33,23,53,63,73);


insert into trip values(44,'30-December-2022 01:00:00','30-December-2022 11:11:00','Completed','1000','30-December-2022','Nellore','NULL','1670',14,4,34,24,54,64,74);


insert into trip values(45,'03-March-2022 09:00:00','03-March-2022 12:00:00','progress','100','03-March-2022','Thiruvallur','NULL','50',15,5,35,25,55,65,75);

desc trip;