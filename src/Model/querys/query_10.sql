-- 10- 5 GRAND PRIX COM MAIOR VELOCIDADE DE VEICULO
SELECT races.name AS `Grand Prix`, MAX(results.fastestLapSpeed) AS `Velocidade`
FROM races
INNER JOIN results ON races.raceId = results.raceId
GROUP BY races.name
ORDER BY `Velocidade` DESC LIMIT 5;