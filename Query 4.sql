USE `cars without insurance`;

-- Query 4 Find the dealership where a certain car is located, by VIN

SELECT `Name`
FROM dealerships
INNER JOIN inventory
ON dealerships.dealership_id = inventory.dealership_id
WHERE vin = 11;
