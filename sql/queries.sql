use metro_db;

# highest passenger traffic
select From_Station,To_Station,max(passengers) as total_passengers from metro_trips
group by From_Station, To_Station
order by total_passengers desc;

# routes with highest revenue
select From_Station, To_Station, sum(Fare) as total_revenue from metro_trips
group by From_Station, To_Station
order by total_revenue Desc ;

# Average fare per route
select From_Station, To_Station, avg(Fare) as avg_fare from metro_trips
group by From_Station , To_Station;

# Longest distance routes
select From_Station, To_Station, max(distance_km) as max_distance from metro_trips 
group by From_Station, To_Station
order by max_distance desc;

# Stations with highest departures
Select From_Station, COUNT(*) AS departures from metro_trips
group by  From_Station
order by  departures desc;

#  Stations with highest passenger arrivals
select To_Station, sum(passengers) as total_passengers from metro_trips
group by to_station
order by total_passengers ;

# Top 10 most used Stations
SELECT From_Station AS station, COUNT(*) AS total_usage
FROM metro_trips
GROUP BY From_Station
ORDER BY total_usage DESC
limit 10;

#
select From_Station, To_Station, count(*) as frequency from metro_trips
group by From_Station,To_Station
order by frequency desc ;

# Total revenue generated
select sum(fare) as total_revenue from metro_trips;

# Average fare across trips
select avg(fare) as average_fare from metro_trips;

# Revenue per route
select From_Station, To_Station, sum(Fare) as Revenue_per_route
from metro_trips
group by From_station, To_Station 
order by Revenue_per_route desc ;

# Revenue per km
select From_Station, To_Station , sum(fare)/sum(distance_km) as revenue_per_km
from metro_trips
group by From_Station, To_Station
order by revenue_per_km desc;

# Average passengers per trip
select avg(passengers) as avg_passengers
from metro_trips;

# Trip with highest passengers
select From_Station, To_Station, passengers from metro_trips
order by passengers desc 
limit 1;

# Total passengers by ticket type
select ticket_type, sum(passengers) as Total_passengers
from metro_trips
group by Ticket_Type;

# Most used ticket_type 
select ticket_type, count(*) as total_usage 
from metro_trips
group by ticket_type
order by total_usage desc
limit 1;

# Trips by remarks
SELECT Remarks, COUNT(*) AS total_trips
FROM metro_trips
GROUP BY Remarks;

# Revenue by remarks
select Remarks,sum(fare) as Revenue
from metro_trips
group by remarks;

# Monthly passenger trend
select month(date) as month ,sum(passengers) as total_passengers
from metro_trips
group by month
order by month;

# Monthy revenue trend
select month(date) as month, sum(fare) as total_revenue
from metro_trips
group by month
order by month;
