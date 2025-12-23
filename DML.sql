
INSERT INTO Airline (code, name, country) VALUES
('DL', 'Delta Air Lines', 'United States'),
('UA', 'United Airlines', 'United States'),
('LH', 'Lufthansa', 'Germany'),
('EK', 'Emirates', 'United Arab Emirates');

INSERT INTO Airport (iata, name, city, country) VALUES
('JFK', 'John F. Kennedy International Airport', 'New York', 'United States'),
('LAX', 'Los Angeles International Airport', 'Los Angeles', 'United States'),
('LHR', 'London Heathrow Airport', 'London', 'United Kingdom'),
('FRA', 'Frankfurt Airport', 'Frankfurt', 'Germany'),
('DXB', 'Dubai International Airport', 'Dubai', 'United Arab Emirates'),
('ORD', 'O''Hare International Airport', 'Chicago', 'United States');

INSERT INTO Aircraft (airline_id, model, capacity) VALUES
(1, 'Boeing 737-800', 160),
(1, 'Airbus A220-300', 140),
(2, 'Boeing 777-200ER', 305),
(2, 'Boeing 787-9 Dreamliner', 290),
(3, 'Airbus A320neo', 180),
(3, 'Airbus A380-800', 509),
(4, 'Airbus A380-800', 489),
(4, 'Boeing 777-300ER', 354);

INSERT INTO Passenger (first_name, last_name, email, phone) VALUES
('John', 'Smith', 'john.smith@email.com', '555-0101'),
('Jane', 'Doe', 'jane.doe@email.com', '555-0102'),
('Peter', 'Jones', 'peter.jones@email.com', '555-0103'),
('Alice', 'Williams', 'alice.w@email.com', '555-0104'),
('David', 'Brown', 'david.brown@email.com', '555-0105');

INSERT INTO Flight (airline_id, flight_no, origin_airport, destination_airport, duration_min) VALUES
(1, 'DL123', 1, 2, 300), 
(2, 'UA928', 6, 3, 480), 
(3, 'LH400', 4, 1, 540), 
(4, 'EK215', 5, 2, 960), 
(1, 'DL456', 2, 1, 310); 

INSERT INTO Booking (booking_id,passenger_id, status) VALUES
(1,1, 'Confirmed'), 
(2,2, 'Confirmed'), 
(3,3, 'Confirmed'), 
(4,4, 'Confirmed'), 
(5,5, 'Pending');   

INSERT INTO Flight_Instance (flight_id, aircraft_id, departure_time, arrival_time, status) VALUES
(1, 1, '2023-10-28 08:00:00-04:00', '2023-10-28 10:00:00-07:00', 'On Time'), 
(2, 3, '2023-10-27 16:30:00-05:00', '2023-10-28 06:30:00+01:00', 'Boarding'), 
(3, 6, '2023-10-26 10:00:00+02:00', '2023-10-26 12:00:00-04:00', 'Departed'), 
(5, 2, '2023-11-02 19:00:00-07:00', '2023-11-03 03:00:00-04:00', 'Scheduled'); 

INSERT INTO Ticket (ticket_id,booking_id, instance_id, seat_number, price) VALUES
(1,1, 1, '12A', 350.00), 
(2,2, 1, '12B', 350.00), 
(3,3, 2, '24F', 850.00), 
(4,4, 4, '5C', 280.00),  
(5,5, 2, '24E', 820.00); 




/*Update*/
UPDATE Flight_Instance
SET status = 'Departed'
WHERE instance_id = 1;

DELETE FROM Ticket
WHERE ticket_id = 1;


select * from Flight_Instance;
select * from airport;
SELECT iata, city, country FROM Airport;
