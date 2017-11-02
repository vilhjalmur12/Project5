SELECT 'projects: SID-->SN' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT SID
  FROM projects
 GROUP BY SID
 HAVING COUNT(DISTINCT SN) > 1
) X;

