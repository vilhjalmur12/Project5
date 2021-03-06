SELECT 'projects: SID-->MN' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT SID
  FROM projects
 GROUP BY SID
 HAVING COUNT(DISTINCT MN) > 1
) X;

