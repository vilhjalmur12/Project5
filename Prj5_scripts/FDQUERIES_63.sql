SELECT 'customers: CNR-->CZ' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT CNR
  FROM customers
 GROUP BY CNR
 HAVING COUNT(DISTINCT CZ) > 1
) X;

