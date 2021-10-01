
-- create a view to find the set of suspected rides who were at keikocorp on the 
-- day when the theft occurred
create view suspected_rides as 
SELECT * from vehicle_location_histories as vlh
WHERE city = 'new york' and 
lat BETWEEN -74.997 and -74.9968 AND
long BETWEEN 40.5 and 40.6 and 
vlh.timestamp::date = '2020-06-23'::date
order by long;

-- create a view to find the attributes of the suspected rides
create view sub_suspected_rides as 
select Distinct r.vehicle_id, u.name as "owner name", u.address, v.status, v.current_location
from suspected_rides as sr
join rides as r on (r.id = sr.ride_id)
left OUTER join vehicles as v on (v.id = r.vehicle_id)
left outer join users as u on (u.id = v.owner_id)

-- 
SELECT distinct r.vehicle_id, u.name  as "rider_name", u.address
from suspected_rides as sr
join rides as r on r.id = sr.ride_id
join users as u on u.id = r.rider_id


-- Use this extension to read data across different databases
create extension dblink;


-- Create a view for the set of suspected_rider_names
create view suspected_rider_names as 
select distinct 
split_part( u.name, ' ', 1) as "first_name",
split_part( u.name, ' ', 2) as "last_name"
from suspected_rides as vlh
join rides as r on r.id = vlh.ride_id
join users as u on u.id = r.rider_id


-- Query the employee table and Suspected_rider_names view to find the culprit
SELECT distinct
concat(t1.first_name, ' ', t1.last_name) as "employee",
concat(u.first_name, ' ', u.last_name) as "rider"

FROM dblink('host=localhost port=5432 user=postgres password=postgres dbname=Employee', 
'SELECT first_name, last_name from employees;')
AS t1(first_name NAME, last_name NAME)

join suspected_rider_names as u on t1.last_name = u.last_name
order by "rider";
