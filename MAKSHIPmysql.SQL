create table manufacturer
(manufacturer_id varchar(5) ,
 name varchar(30),
 city varchar(20) ,
 state varchar(2) ,
 rep_id int(2) ,
 bid_preference int(2) ,
 PRIMARY KEY (manufacturer_id));

create table ship
(ship_no varchar(5) primary key,
class int(2),
capacity float(20,2),
purch_date date,
manufacturer_id varchar(5),
constraint fk0 foreign key (manufacturer_id) references manufacturer(manufacturer_id));

create table captain
(capt_id  varchar(6) primary key,
license_grade int(2),
fname varchar(25),
lname varchar(25),
dob  date);

create table item
(item_no   varchar(5) primary key,
item_type  varchar(5),
description varchar(40),
weight float(10,2));

create table distance
(origin  varchar(20),
destination varchar(20),
miles  float(15,2),
days int(4),
primary key (origin,destination));

create table shipment
(shipment_id  varchar(7) primary key,
ship_no  varchar(5)  ,
capt_id  varchar(6) ,
shipment_date  date,
origin  varchar(20),
destination varchar(20),
arrival_date  date,
constraint fk1 foreign key (origin,destination) references distance(origin,destination),
constraint fk2 foreign key (ship_no) references ship(ship_no),
constraint fk3 foreign key (capt_id ) references captain(capt_id));

create table shipment_line
(shipment_id varchar(7) ,
item_no varchar(5) ,
quantity float (10,2),
primary key (shipment_id,item_no),
constraint fk4 foreign key (shipment_id) references shipment(shipment_id),
constraint fk5 foreign key (item_no) references item(item_no));




