SELECT 'projects: MID-->ID' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT MID
  FROM projects
 GROUP BY MID
 HAVING COUNT(DISTINCT ID) > 1
) X;

