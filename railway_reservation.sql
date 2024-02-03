CREATE DATABASE railway_reservation_system;
USE railway_reservation_system;
-- Create the Trains table
CREATE TABLE Trains (
    train_number INT AUTO_INCREMENT PRIMARY KEY,
    train_name VARCHAR(255),
    train_type VARCHAR(255)
);

-- Create the Train_Schedules table
CREATE TABLE Train_Schedules (
    train_schedule_id INT AUTO_INCREMENT PRIMARY KEY,
    train_number INT,
    station_name VARCHAR(255),
    departure_time TIME,
    arrival_time TIME,
    FOREIGN KEY (train_number) REFERENCES Trains(train_number)
);

-- Create the Fares table
CREATE TABLE Fares (
    fare_id INT AUTO_INCREMENT PRIMARY KEY,
    train_number INT,
    class_of_travel VARCHAR(255),
    section VARCHAR(255),
    fare DECIMAL(10, 2),
    FOREIGN KEY (train_number) REFERENCES Trains(train_number)
);

-- Create the Passengers table
CREATE TABLE Passengers (
    passenger_id INT AUTO_INCREMENT PRIMARY KEY,
    passenger_name VARCHAR(255),
    passenger_age INT,
    passenger_contact_information VARCHAR(255)
);

-- Create the Reservations table
CREATE TABLE Reservations (
    reservation_id INT AUTO_INCREMENT PRIMARY KEY,
    train_number INT,
    passenger_id INT,
    class_of_travel VARCHAR(255),
    seat_number INT,
    FOREIGN KEY (train_number) REFERENCES Trains(train_number),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);
