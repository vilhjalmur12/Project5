SELECT 'rentals: PID-->HID' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT PID
  FROM rentals
 GROUP BY PID
 HAVING COUNT(DISTINCT HID) > 1
) X;

