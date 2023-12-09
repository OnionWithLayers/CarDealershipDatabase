USE `cars without insurance`;

-- Query 6 Get all sales information for a specific dealer for a specific date range

SELECT  *
FROM dealerships
INNER JOIN inventory
ON dealerships.dealership_id = inventory.dealership_id
INNER JOIN sales_contracts
ON inventory.vin = sales_contracts.vin
WHERE sales_contracts.sales_Date BETWEEN '2023-02-01' AND '2023-04-30';