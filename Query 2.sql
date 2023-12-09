USE `cars without insurance`;

-- QUERY 2 Find all vehicles for a specific dealership

SELECT *
FROM vehicles
INNER JOIN inventory ON vehicles.vin = inventory.vin
WHERE dealership_id = 1;