-- 9- 5 consturtoras que sofreram mais acidentes na f1
SELECT constructors.name AS `Construtora`, COUNT(results.statusId) as `Quantidade de Assidentes`
FROM constructors
INNER JOIN results ON constructors.constructorId = results.constructorId
INNER JOIN status ON results.statusId = status.statusId
WHERE status.statusId = 3 
GROUP BY `Construtora`
ORDER BY `Quantidade de Assidentes` DESC Limit 5 ;