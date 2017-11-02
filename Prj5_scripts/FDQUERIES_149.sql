SELECT 'rentals: S-->HC' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT S
  FROM rentals
 GROUP BY S
 HAVING COUNT(DISTINCT HC) > 1
) X;
