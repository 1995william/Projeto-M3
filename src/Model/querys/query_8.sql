-- 8- 10 pilotos que mais subiram no pódio (1,2,3 colocação);
SELECT CONCAT(drivers.forename,' ', drivers.surname) AS `Piloto`, COUNT(results.position) AS `Pódio`
FROM drivers
INNER JOIN results ON drivers.driverId = results.driverId
WHERE results.position <= 3
GROUP BY `Piloto`
ORDER BY `Pódio` DESC LIMIT 10;