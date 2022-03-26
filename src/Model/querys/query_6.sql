-- 6- 10 construtoras mais ganharam Grand Prix tendo a pole position
SELECT constructors.name AS `Construtura`, COUNT(results.position) AS `Vitórias`, constructors.nationality AS `Nacionalidade`
FROM constructors
INNER JOIN results ON constructors.constructorId = results.constructorId
WHERE position = 1 AND grid = 1
GROUP BY `Construtura`
ORDER BY `Vitórias` DESC LIMIT 10;