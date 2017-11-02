SELECT 'customers: EID-->CC' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT EID
  FROM customers
 GROUP BY EID
 HAVING COUNT(DISTINCT CC) > 1
) X;

