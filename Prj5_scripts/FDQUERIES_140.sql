SELECT 'rentals: PN-->S' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT PN
  FROM rentals
 GROUP BY PN
 HAVING COUNT(DISTINCT S) > 1
) X;
