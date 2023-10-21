create table payment(
payment_id int primary key,
payment_type varchar(15),
card_no varchar(20),
bank_name varchar(20),
payment_date varchar(20),
payment_status varchar(15)
);

insert into payment values(51,'creditcard','374245455400126','IndianBank','04-January-2023','successful');
insert into payment values(52,'debitcard','378282246310005','IndianBank','24-June-2022','Failed');
insert into payment values(53,'creditcard','3421238923109436','IndianOverseasBank','25-November-2021','failed');
insert into payment values(54,'creditcard','1234234567890123','CanaraBank','12-July-2022','Successful');
insert into payment values(55,'debitcard','5241670143567891','StateBank','01-April-2021','successful');

desc payment;