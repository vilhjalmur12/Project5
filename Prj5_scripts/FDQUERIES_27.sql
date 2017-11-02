SELECT 'coffees: DS-->DN' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT DS
  FROM coffees
 GROUP BY DS
 HAVING COUNT(DISTINCT DN) > 1
) X;
