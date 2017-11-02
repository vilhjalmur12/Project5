SELECT 'customers: CID-->CC' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT CID
  FROM customers
 GROUP BY CID
 HAVING COUNT(DISTINCT CC) > 1
) X;

