-- 7- Quais as nacionalidade com maior quantidade de vitorias
SELECT constructors.nationality AS `Nacionalidade`, COUNT(results.position) AS `Vitórias`
FROM constructors
INNER JOIN results ON constructors.constructorId = results.constructorId
WHERE position = 1
GROUP BY  `Nacionalidade`
ORDER BY `Vitórias` DESC;