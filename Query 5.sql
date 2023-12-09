USE `cars without insurance`;

-- Query 5 Find all Dealerships that have a certain car type

SELECT dealerships.`Name`, dealerships.address, dealerships.phone, vehicles.`Name` vehicle_name
FROM dealerships
INNER JOIN inventory
ON dealerships.dealership_id = inventory.dealership_id
INNER JOIN vehicles
ON inventory.vin = vehicles.vin
WHERE vehicles.`Name` LIKE '%HONDA%';