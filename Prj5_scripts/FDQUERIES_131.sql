SELECT 'rentals: PID-->HC' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT PID
  FROM rentals
 GROUP BY PID
 HAVING COUNT(DISTINCT HC) > 1
) X;
