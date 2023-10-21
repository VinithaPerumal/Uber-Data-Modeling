CREATE TABLE customer_orders (
  order_id INTEGER,
  customer_id INTEGER,
  pizza_id INTEGER,
  exclusions VARCHAR(4),
  extras VARCHAR(4),
  order_time TIMESTAMP
);

INSERT INTO customer_orders
  (order_id, customer_id, pizza_id, exclusions, extras, order_time)
VALUES
  ('1', '101', '1', '', '', '2020-01-01 18:05:02'),
  ('2', '101', '1', '', '', '2020-01-01 19:00:52'),
  ('3', '102', '1', '', '', '2020-01-02 23:51:23'),
  ('3', '102', '2', '', NULL, '2020-01-02 23:51:23'),
  ('4', '103', '1', '4', '', '2020-01-04 13:23:46'),
  ('4', '103', '1', '4', '', '2020-01-04 13:23:46'),
  ('4', '103', '2', '4', '', '2020-01-04 13:23:46'),
  ('5', '104', '1', 'null', '1', '2020-01-08 21:00:29'),
  ('6', '101', '2', 'null', 'null', '2020-01-08 21:03:13'),
  ('7', '105', '2', 'null', '1', '2020-01-08 21:20:29'),
  ('8', '102', '1', 'null', 'null', '2020-01-09 23:54:33'),
  ('9', '103', '1', '4', '1, 5', '2020-01-10 11:22:59'),
  ('10', '104', '1', 'null', 'null', '2020-01-11 18:34:49'),
  ('10', '104', '1', '2, 6', '1, 4', '2020-01-11 18:34:49');
  

select count(*) as pizz_order from customer_orders;
  
SELECT COUNT(DISTINCT order_id ) as unique_order
FROM customer_orders;
  
-- 4.How many of each type of pizza was delivered?
 
select count(customer_orders.pizza_id) as  pizza_delivered,pizza_names.pizza_name 
from ((customer_orders join pizza_names on customer_orders.pizza_id=pizza_names.pizza_id)
join runner_orders on runner_orders.order_id=customer_orders.order_id) where runner_orders.pickup_time !='null'
group by pizza_names.pizza_name;

select count(customer_orders.pizza_id) as pizza_delivered,pizza_names.pizza_name 
from ((customer_orders join pizza_names on customer_orders.pizza_id=pizza_names.pizza_id)
join runner_orders on runner_orders.order_id=customer_orders.order_id) where runner_orders.distance !='null'
group by pizza_names.pizza_name;

-- 5. How many Vegetarian and Meatlovers were ordered by each customer?

select count(customer_orders.pizza_id) as order_pizza,pizza_names.pizza_name,customer_orders.customer_id
from (customer_orders join pizza_names on customer_orders.pizza_id=pizza_names.pizza_id)
group by pizza_names.pizza_name,customer_orders.customer_id order by customer_orders.customer_id;


--  8
select count(customer_orders.pizza_id) as pizza_exclusions_extras from 
 (customer_orders join runner_orders on customer_orders.order_id=runner_orders.order_id) 
  where (exclusions and extras)!='null' and runner_orders.distance!='null';
  
-- 6
select order_id,COUNT(pizza_id) AS total_pizza_count from customer_orders GROUP BY
order_id;
-- 9
select hour(order_time) as hour_of_day,count(order_id) as pizza_count from customer_orders group by hour_of_day;
-- 10
select dayname(order_time) as day_of_week ,count(order_id) as pizza_count from customer_orders group by day_of_week;

-- 7

select 
customer_orders.customer_id,
	sum(case when (customer_orders.exclusions = 'null' and customer_orders.extras = 'null')
      then 1
      else 0 
	  end) as no_changes,
	sum(case when (customer_orders.exclusions != 'null' or customer_orders.extras != 'null') 
     then 1
     else 0 
     end) as atleast_1_changes
from (customer_orders join runner_orders on customer_orders.order_id = runner_orders.order_id) 
where runner_orders.distance !=0 group by customer_orders.customer_id order by customer_orders.customer_id;
  
   
   

