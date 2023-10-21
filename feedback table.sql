create table feedback(
feedback_id int primary key,
rating float,
opinion varchar(15)
);


insert into feedback values(61,4.5,'good');
insert into feedback values(62,3,'poor');
insert into feedback values(63,5,'excellent');
insert into feedback values(64,4.7,'very good');
insert into feedback values(65,4,'good');

desc feedback;