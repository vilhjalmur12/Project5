SELECT 'customers: CID-->CN' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT CID
  FROM customers
 GROUP BY CID
 HAVING COUNT(DISTINCT CN) > 1
) X;

