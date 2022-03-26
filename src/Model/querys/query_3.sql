-- 3- 5 pilotos mais jovens a vencer uma corrida na f1
SELECT DISTINCT drivers.code AS `Sigla`,CONCAT(drivers.forename,' ',drivers.surname) AS `Piloto`, drivers.nationality AS `Nacionalidade`, TIMESTAMPDIFF(YEAR, drivers.dob , NOW()) AS `Idade`, drivers.dob AS `Data de Nascimento`
FROM drivers
INNER JOIN results ON drivers.driverId = results.driverId
WHERE position = 1
ORDER BY `Data de Nascimento` DESC LIMIT 5;