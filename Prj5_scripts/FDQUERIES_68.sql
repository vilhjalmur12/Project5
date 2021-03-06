SELECT 'customers: CZ-->CS' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT CZ
  FROM customers
 GROUP BY CZ
 HAVING COUNT(DISTINCT CS) > 1
) X;

