-- 1- 10 Construtoras com mais vitórias em Gram Premios
SELECT constructors.constructorRef AS `construtora`, COUNT(position) AS `Vitórias` FROM constructors
INNER JOIN results ON constructors.constructorId = results.constructorId
WHERE position = 1
GROUP BY `Construtora`
ORDER BY `Vitórias` DESC LIMIT 10;