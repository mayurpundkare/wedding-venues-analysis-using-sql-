create database Wedmegood;

use wedmegood;

-- drop database wedmegood;




CREATE TABLE venues_data (
    venue_name VARCHAR(255),
    venue_type VARCHAR(100),
    ratings DECIMAL(2, 1),
    reviews INT,
    menu_price decimal,
    rooms INT,
    pax_min INT,
    pax_max INT,
    destination VARCHAR(100),
    amenities INT
);

select * from venues_data;

describe venues_data;

select count(*) from venues_data;

-- 1. Top 5 Most reviewed venues
select venue_name,reviews
from venues_data 
order by reviews desc 
limit 5;

-- 2. Top 10 expensive venues
select venue_name, menu_price
from venues_data
order by menu_price desc 
limit 10;

-- 3. Top 10 cheapest venues
select venue_name, menu_price
from venues_data
order by menu_price asc
limit 10;

-- 4. Venues with rating above average
select *
from venues_data
where ratings > (
select avg(ratings)
from venues_data);

-- 5. Venues with menu price above average
select *
from venues_data
where menu_price > (
select avg(menu_price)
from venues_data );

-- 6. Find venues with maximum capacity above 1000
select * 
from venues_data
where pax_max > 1000;
 
 select * from venues_data;
 -- 7. Find venues having more than 50 rooms
select * 
from venues_data
where rooms > 50;


