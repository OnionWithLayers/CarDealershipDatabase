# ---------------------------------------------------------------------- #
# Step 1: Drop and then Create a DATABASE
# Target DBMS:           MySQL                                           #
# Project name:          Northwind                                       #
# ---------------------------------------------------------------------- #
DROP DATABASE IF EXISTS `Cars Without Insurance`;

CREATE DATABASE IF NOT EXISTS `Cars Without Insurance`;

USE `Cars Without Insurance`;

# ---------------------------------------------------------------------- #
# Step 2: Creating Tables
# Tables                                                                 #
# 	- Add table "dealerships"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE dealerships (
    dealership_id INTEGER NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(50) NOT NULL,
    Address VARCHAR(50),
    Phone VARCHAR(12),
    PRIMARY KEY (dealership_id)
);

CREATE TABLE vehicles (
    vin INTEGER NOT NULL,
    `Name` VARCHAR(20),
    `Year` INTEGER,
    Color VARCHAR(20),
    Price VARCHAR(12),
    Sold BOOLEAN,
    PRIMARY KEY (vin)
);

CREATE TABLE inventory (
  dealership_id INTEGER,
  vin INTEGER NOT NULL,
  foreign key (dealership_id) REFERENCES dealerships(dealership_id),
  foreign key (vin) REFERENCES vehicles(vin)
);

CREATE TABLE sales_contracts(
sales_contract_id INTEGER NOT NULL auto_increment PRIMARY KEY,
`First Name` VARCHAR(20),
`Last Name` VARCHAR(20),
Phone VARCHAR(12),
Email VARCHAR(50),
sales_Date DATE,
vin INTEGER NOT NULL,
foreign key (vin) REFERENCES vehicles(vin)
);

CREATE TABLE lease_contracts(
leased_contract_id INTEGER NOT NULL auto_increment PRIMARY KEY,
`First Name` VARCHAR(20),
`Last Name` VARCHAR(20),
Phone VARCHAR(12),
Email VARCHAR(50),
start_date_leased DATE,
end_date_lease DATE,
vin INTEGER NOT NULL,
foreign key (vin) REFERENCES vehicles(vin)
);

#----------------------------------#
# INSERTING VALUES INTO THE TABLES #
#----------------------------------#

INSERT INTO dealerships (`Name`, Address, Phone) VALUES 
('ABC Motors', '123 Main Street, Cityville', '555-1234'),
('XYZ Cars', '456 Oak Avenue, Townsville', '123-456-7890'),
('SuperCars Inc.', '789 Pine Road, Villagetown', '9876543210');

INSERT INTO vehicles VALUES 
(11, 'HONDA', 2019, 'Red', '$25,000', true),
(22, 'TOYOTA', 2020, 'Blue', '$30,000', false),
(33, 'HONDA ACCORD', 2018, 'Black', '$22,000', true),
(44, 'HONDA MINIVAN', 2017, 'Silver', '$18,000', false),
(55, 'CAMRY', 2021, 'White', '$35,000', true),
(66, 'JEEP', 2016, 'Green', '$15,500', true);

INSERT INTO inventory VALUES 
(1, 11),
(2, 22),
(3, 33),
(2, 44),
(1, 55),
(3, 66);

INSERT INTO sales_contracts (`First Name`, `Last Name`, Phone, Email, sales_date, vin) VALUES
('John', 'Doe', '222-555-1234', 'john.doe@email.com', '2023-01-15', 11),
('Alice', 'Smith', '123-456-7890', 'alice.smith@email.com', '2023-02-20', 22),
('Bob', 'Johnson', '987-654-3210', 'bob.johnson@email.com', '2023-03-25', 33);

INSERT INTO lease_contracts (`First Name`, `Last Name`, Phone, Email, start_date_leased, end_date_lease, vin) VALUES
('Eva', 'White', '123-555-6789', 'eva.white@email.com', '2023-04-10', '2023-04-29', 44),
('Michael', 'Brown', '321-890-1234', 'michael.brown@email.com', '2023-05-15', '2023-06-06', 55),
('Sophia', 'Anderson', '777-888-9999', 'sophia.anderson@email.com', '2023-06-20', '2023-07-20', 66);

