-- 5- 10 pilotos que mais conseguiram poles Position na Formula1
SELECT CONCAT(drivers.forename,' ', drivers.surname) AS `Piloto`, COUNT(grid) AS `Pole Position` 
FROM drivers
INNER JOIN results ON drivers.driverId = results.driverId
WHERE grid = 1
GROUP BY forename
ORDER BY `Pole Position` DESC LIMIT 10;