-- 2- Quantas corridas Lewis Hamilton venceu em cada construtora
SELECT drivers.code AS `Sigla`, CONCAT(drivers.forename,' ', drivers.surname) AS `Piloto`, constructors.name AS `Construtora`, COUNT(position) AS `Vitórias` FROM drivers
INNER JOIN results ON drivers.driverId = results.driverId
INNER JOIN constructors ON constructors.constructorId = results.constructorId
WHERE surname = 'Hamilton' AND position = 1
GROUP BY `Construtora`
ORDER BY `Vitórias` DESC;