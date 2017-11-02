SELECT 'coffees: DN-->DID' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT DN
  FROM coffees
 GROUP BY DN
 HAVING COUNT(DISTINCT DID) > 1
) X;

