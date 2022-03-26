-- 4- Quatas vezes um brasileiro venceu um grande prêmio
SELECT drivers.code AS `Sigla`, CONCAT(drivers.forename,' ',drivers.surname) AS `Piloto`, COUNT(results.position) AS `Quantidade de Vitórias`
FROM drivers
INNER JOIN results ON drivers.driverId = results.driverId
WHERE position = 1 AND nationality = 'Brazilian'
GROUP BY `Piloto`
ORDER BY `Quantidade de Vitórias` DESC;