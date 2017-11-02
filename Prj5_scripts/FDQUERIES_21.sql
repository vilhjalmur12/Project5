SELECT 'coffees: DN-->DS' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT DN
  FROM coffees
 GROUP BY DN
 HAVING COUNT(DISTINCT DS) > 1
) X;

