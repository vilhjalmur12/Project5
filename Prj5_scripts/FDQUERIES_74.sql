SELECT 'customers: CC-->CS' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT CC
  FROM customers
 GROUP BY CC
 HAVING COUNT(DISTINCT CS) > 1
) X;

