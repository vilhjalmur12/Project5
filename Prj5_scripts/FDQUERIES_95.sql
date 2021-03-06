SELECT 'projects: PID-->MN' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT PID
  FROM projects
 GROUP BY PID
 HAVING COUNT(DISTINCT MN) > 1
) X;

