SELECT 'coffees: CN-->CID' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT CN
  FROM coffees
 GROUP BY CN
 HAVING COUNT(DISTINCT CID) > 1
) X;

