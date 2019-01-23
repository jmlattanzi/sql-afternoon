create table Person (
	id serial,
  name varchar(255),
  age int,
  height int,
  city text,
  favorite_color text
);

insert into Person(name, age, height, city, favorite_color)
	values ('Baz Ravish', 32, 121, 'Boston', 'Black');
insert into Person(name, age, height, city, favorite_color)
	values ('Max Gland', 23, 111, 'Venice', 'Grayk');
insert into Person(name, age, height, city, favorite_color)
	values ('Duncan Clench', 33, 176, 'Berlin', 'White');
insert into Person(name, age, height, city, favorite_color)
	values ('Shuck Buphone', 43, 116, 'Helsinki', 'Black');
insert into Person(name, age, height, city, favorite_color)
    values ('Besus Fufoon', 47, 196, 'Longyearbýur', 'Black');

select * from Person order by height desc;
select * from Person order by height asc;
select * from Person order by age desc;
select * from Person where age > 20;
select * from Person where age = 18;
select * from Person where age < 20 or age > 30;
select * from Person where age != 27;
select * from Person where favorite_color != 'Red';
select * from Person where favorite_color != 'Red' and favorite_color != 'blue';
select * from Person where favorite_color = 'Orange' or favorite_color = 'Green';
select * from Person where favorite_color in ('green', 'orange', 'blue');
select * from Person where favorite_color in ('yellow', 'purple');

create table Orders (
	PersonID int,
  ProductName text,
  ProductPrice decimal,
  Quantity int
);

insert into Orders(PersonID, ProductName, ProductPrice, Quantity)
	values(1, 'Canned Corn On the Cob', 2.34, 7);
  
insert into Orders(PersonID, ProductName, ProductPrice, Quantity)
	values(234, 'Canned Carrot On the Cob', 2.37, 7);
  
insert into Orders(PersonID, ProductName, ProductPrice, Quantity)
	values(12355, 'Canned Bread On the Cob', 2.24, 7);
  
insert into Orders(PersonID, ProductName, ProductPrice, Quantity)
	values(134, 'Canned Peppermint On the Cob', 3.33, 7);
  
insert into Orders(PersonID, ProductName, ProductPrice, Quantity)
	values(458, 'Canned Hotdog On the Cob', 5.64, 7);

select * from Orders;
select sum(quantity) from Orders ;
select sum(ProductPrice * quantity) from Orders;
select sum(ProductPrice * quantity) from Orders where PersonID = 234;

insert into Artist(name) values('Warbringer');
insert into Artist(name) values('Fleshgod Apocalypse');
insert into Artist(name) values('Autopsy');
insert into Artist(name) values('Gojira');
insert into Artist(name) values('Nails');

select * from artist order by name desc limit 10;
select * from artist order by name asc limit 5;
select * from artist where name like 'Black%';
select * from artist where name like '%Black%';

select * from employee where city = 'Calgary';
select first_name, last_name, max(birth_date) from employee;
select first_name, last_name, min(birth_date) from employee;
select * from employee where reports_to = 2;
select count(*) from employee where city = 'Lethbridge';

select * from invoice where billing_country = 'USA';
select max(total) from invoice;
select min(total) from invoice;
select * from invoice where total > 5;
select count(total) from invoice where total < 5;
select * from invoice where billing_state in ('CA', 'TX', 'AZ');
select avg(total) from invoice;
select sum(total) from invoice;