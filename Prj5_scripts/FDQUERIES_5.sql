SELECT 'coffees: DID-->CM' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT DID
  FROM coffees
 GROUP BY DID
 HAVING COUNT(DISTINCT CM) > 1
) X;

