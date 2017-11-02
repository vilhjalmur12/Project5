SELECT 'projects: SN-->ID' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT SN
  FROM projects
 GROUP BY SN
 HAVING COUNT(DISTINCT ID) > 1
) X;

