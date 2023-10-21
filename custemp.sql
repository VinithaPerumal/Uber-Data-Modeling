create table employee(emp_id int primary key ,emp_name varchar(10) not null,emp_age int,emp_phonenumber varchar(20),emp_salary decimal not null);

Table created.

SQL> insert into employee values(1,'John',25,'9876345292',35000);

1 row created.

SQL> insert into employee values(2,'Babita',27,'9567347891',40000);

1 row created.

SQL> insert into employee values(3,'Amir',29,'8953478456',37000);

1 row created.

SQL> insert into employee values(4,'Sunaina',28,'8657438934',38000);

1 row created.

SQL> insert into employee values(5,'Naina',24,'8557569873',39000);

1 row created.

SQL> desc employee;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMP_ID                                    NOT NULL NUMBER(38)
 EMP_NAME                                  NOT NULL VARCHAR2(10)
 EMP_AGE                                            NUMBER(38)
 EMP_PHONENUMBER                                    VARCHAR2(20)
 EMP_SALARY                                NOT NULL NUMBER(38)

SQL> select * from employee;

    EMP_ID EMP_NAME      EMP_AGE EMP_PHONENUMBER      EMP_SALARY                
---------- ---------- ---------- -------------------- ----------                
         1 John               25 9876345292                35000                
         2 Babita             27 9567347891                40000                
         3 Amir               29 8953478456                37000                
         4 Sunaina            28 8657438934                38000                
         5 Naina              24 8557569873                39000                

SQL> create table customer(customer_id int primary key,customer_name varchar(10)
  2  not null,city varchar(20),state varchar(15),pincode int);

Table created.

SQL> insert into customer values(1,'Jack','T Nagar','chennai',600017);

1 row created.

SQL> insert into customer values(2,'Jaya','Anna Nagar','Chennai',600040);

1 row created.

SQL> 
SQL> insert into customer values(3,'Jay','Kelambakkam','Chengalpattu',603103);

1 row created.

SQL> 
SQL> insert into customer values(4,'Riya','Thiruchendur','Tuticorin',628215);

1 row created.

SQL> insert into customer values(5,'Munna','Pollachi','Coimbatore',642001);

1 row created.

SQL> 
SQL> desc customer;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CUSTOMER_ID                               NOT NULL NUMBER(38)
 CUSTOMER_NAME                             NOT NULL VARCHAR2(10)
 CITY                                               VARCHAR2(20)
 STATE                                              VARCHAR2(15)
 PINCODE                                            NUMBER(38)

SQL> select * from customer;

CUSTOMER_ID CUSTOMER_N CITY                 STATE              PINCODE          
----------- ---------- -------------------- --------------- ----------          
         1 Jack       T Nagar              chennai             600017          
         2 Jaya       Anna Nagar           Chennai             600040          
         3 Jay        Kelambakkam          Chengalpattu        603103          
         4 Riya       Thiruchendur         Tuticorin           628215          
         5 Munna      Pollachi             Coimbatore          642001          

SQL> 



drop table ordr;

Table dropped.

SQL> create table ordr(order_id int primary key,item_name varchar(10),Price decimal,customer_id int references customer(customer_id),emp_id int references employee(emp_id));

Table created.

SQL> insert into ordr values(1,'IronBox',590,1,1);

1 row created.

SQL> insert into ordr values(2,'Earphones',50,2,2);

1 row created.

SQL> insert into ordr values(3,'Mouse',260,3,3);

1 row created.

SQL> insert into ordr values(4,'clock',200,4,4);

1 row created.

SQL> insert into ordr values(5,'Calculator',380,5,5);

1 row created.

SQL> desc ordr;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ORDER_ID                                  NOT NULL NUMBER(38)
 ITEM_NAME                                          VARCHAR2(10)
 PRICE                                              NUMBER(38)
 CUSTOMER_ID                                        NUMBER(38)
 EMP_ID                                             NUMBER(38)

SQL> select * from ordr;

  ORDER_ID ITEM_NAME       PRICE CUSTOMER_ID     EMP_ID                         
---------- ---------- ---------- ----------- ----------                         
         1 IronBox           590           1          1                         
         2 Earphones          50           2          2                         
         3 Mouse             260           3          3                         
         4 clock             200           4          4                         
         5 Calculator        380           5          5                         

SQL> 
