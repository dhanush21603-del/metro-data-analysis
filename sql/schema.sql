CREATE DATABASE metro_db;
USE metro_db;

CREATE TABLE metro_trips (
    TripID INT,
    Date DATE,
    From_Station VARCHAR(100),
    To_Station VARCHAR(100),
    Distance_km FLOAT,
    Fare FLOAT,
    Cost_per_passenger FLOAT,
    Passengers INT,
    Ticket_Type VARCHAR(50),
    Remarks VARCHAR(50)
);
