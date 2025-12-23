# Flight Database Management System 
## Course
CMPE343 – Database Management Systems and Programming I
## Students
-    22319940 Youness ELOUAJRI 
-    22408948 Mohammad reza Jahangiri 
-    22312658 Youssef berqane
## Description
The Flight Database Management System is designed to store and manage information related to airline operations. 
It keeps data about airlines, airports, aircraft, flights, flight schedules, passengers, bookings, and tickets. 
The system helps organize flight information, track passenger reservations, and manage ticket sales in a structured way. 
By using a relational database, the system ensures data consistency and makes it easy to retrieve, update, and analyze information for management and operational purposes.

## Technologies
-    Supabase
-    SQL
## Project Contents
-    ER Diagram
-    DDL (8 Tables and their constraints)
-    DML (Insert, Update, Delete operations)
-    15 SQL Queries for data analysis and management
## Database Features
-    Stores information about airlines, airports, and aircraft.
-    Manages flight details and flight schedules.
-    Keeps records of passengers and their bookings.
-    Stores ticket information and prices.
-    Allows adding, updating, and deleting data.
-    Helps retrieve flight and passenger information easily.
-    Supports basic reports and statistics for management.
## Database Tables and Attributes
-    Airline: airline_id (Primary Key), code, name, country
-    Airport: airport_id (Primary Key), iata, name, city, country
-    Aircraft: aircraft_id (Primary Key), airline_id (Foreign Key), model, capacity
-    Flight: flight_id (Primary Key), airline_id (Foreign Key), origin_airport (Foreign Key), destination_airport (Foreign Key), flight_no, duration_min
-    Flight_Instance: instance_id (Primary Key), flight_id (Foreign Key), aircraft_id (Foreign Key), departure_time, arrival_time, status
-    Passenger:passenger_id (Primary Key), first_name, last_name, email, phone
-    Booking:booking_id (Primary Key), passenger_id (Foreign Key), booking_date, status
-    Ticket:ticket_id (Primary Key), booking_id (Foreign Key), instance_id (Foreign Key), seat_number, price
