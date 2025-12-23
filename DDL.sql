CREATE TABLE Airline (
    airline_id SERIAL PRIMARY KEY,
    code VARCHAR(10) UNIQUE NOT NULL,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

CREATE TABLE Airport (
    airport_id SERIAL PRIMARY KEY,
    iata CHAR(3) UNIQUE NOT NULL,
    name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE Aircraft (
    aircraft_id SERIAL PRIMARY KEY,
    airline_id INT REFERENCES Airline(airline_id),
    model VARCHAR(50),
    capacity INT CHECK (capacity > 0)
);

CREATE TABLE Flight (
    flight_id SERIAL PRIMARY KEY,
    airline_id INT REFERENCES Airline(airline_id),
    flight_no VARCHAR(10),
    origin_airport INT REFERENCES Airport(airport_id),
    destination_airport INT REFERENCES Airport(airport_id),
    duration_min INT CHECK (duration_min > 0)
);

CREATE TABLE Flight_Instance (
    instance_id SERIAL PRIMARY KEY,
    flight_id INT REFERENCES Flight(flight_id),
    aircraft_id INT REFERENCES Aircraft(aircraft_id),
    departure_time TIMESTAMP,
    arrival_time TIMESTAMP,
    status VARCHAR(20)
);

CREATE TABLE Passenger (
    passenger_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20)
);

CREATE TABLE Booking (
    booking_id SERIAL PRIMARY KEY,
    passenger_id INT REFERENCES Passenger(passenger_id),
    booking_date DATE DEFAULT CURRENT_DATE,
    status VARCHAR(20)
);

CREATE TABLE Ticket (
    ticket_id SERIAL PRIMARY KEY,
    booking_id INT REFERENCES Booking(booking_id),
    instance_id INT REFERENCES Flight_Instance(instance_id),
    seat_number VARCHAR(5),
    price NUMERIC(8,2)
);
