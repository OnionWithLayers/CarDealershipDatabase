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
    `Year` INTEGER,
    Color VARCHAR(20),
    Price VARCHAR(12),
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
vin INTEGER NOT NULL,
sales_Date DATE,
foreign key (vin) REFERENCES vehicles(vin)
);

CREATE TABLE lease_contracts(
leased_contract_id INTEGER NOT NULL auto_increment PRIMARY KEY,
start_date_leased DATE,
end_date_lease DATE,
vin INTEGER NOT NULL,
foreign key (vin) REFERENCES vehicles(vin)
);