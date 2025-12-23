/*List all flights with airline name*/

SELECT f.flight_no, fi.departure_time, fi.status
FROM Flight_Instance fi
JOIN Flight f ON fi.flight_id = f.flight_id;

/*Count total passengers*/

SELECT COUNT(*) AS total_passengers
FROM Passenger;

/*Total tickets sold*/

SELECT COUNT(*) AS tickets_sold
FROM Ticket;

/*Total revenue from ticket sales*/

SELECT SUM(price) AS total_revenue
FROM Ticket;

/*Average ticket price*/

SELECT ROUND(AVG(price), 2) AS average_price
FROM Ticket;

/* Number of flights per airline*/

SELECT a.name, COUNT(f.flight_id) AS total_flights
FROM Airline a
JOIN Flight f ON a.airline_id = f.airline_id
GROUP BY a.name;

/*Highest ticket price*/

SELECT MAX(price) AS highest_price
FROM Ticket;

/*Convert passenger names to uppercase*/

SELECT UPPER(first_name), UPPER(last_name)
FROM Passenger;

/*Show specific bookings date */

SELECT * FROM Booking
WHERE booking_date = '2025-12-21';


/* Passenger and their bookings*/

SELECT p.first_name, p.last_name, b.status
FROM Passenger p
JOIN Booking b ON p.passenger_id = b.passenger_id;

/*Tickets with flight number */

SELECT t.ticket_id, f.flight_no, t.price
FROM Ticket t
JOIN Flight_Instance fi ON t.instance_id = fi.instance_id
JOIN Flight f ON fi.flight_id = f.flight_id;

/*Number of flights per airline*/
SELECT a.name, COUNT(f.flight_id) AS total_flights
FROM Airline a
JOIN Flight f ON a.airline_id = f.airline_id
GROUP BY a.name;

/*Tickets ordered by price*/

SELECT ticket_id, price
FROM Ticket
ORDER BY price DESC;

/*Flights longer than average duration*/

SELECT flight_no
FROM Flight
WHERE duration_min >
    (SELECT AVG(duration_min) FROM Flight);

/* Tickets sold per flight*/

    SELECT f.flight_no, COUNT(t.ticket_id) AS tickets_sold
FROM Flight f
JOIN Flight_Instance fi ON f.flight_id = fi.flight_id
JOIN Ticket t ON fi.instance_id = t.instance_id
GROUP BY f.flight_no;
