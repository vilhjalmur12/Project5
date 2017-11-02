SELECT 'rentals: S-->HS' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT S
  FROM rentals
 GROUP BY S
 HAVING COUNT(DISTINCT HS) > 1
) X;
