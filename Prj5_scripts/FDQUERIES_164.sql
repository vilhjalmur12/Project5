SELECT 'rentals: HC-->PN' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT HC
  FROM rentals
 GROUP BY HC
 HAVING COUNT(DISTINCT PN) > 1
) X;

