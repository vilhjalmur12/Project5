SELECT 'customers: CZ-->CNR' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT CZ
  FROM customers
 GROUP BY CZ
 HAVING COUNT(DISTINCT CNR) > 1
) X;
