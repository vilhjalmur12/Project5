SELECT 'rentals: HZ-->HID' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT HZ
  FROM rentals
 GROUP BY HZ
 HAVING COUNT(DISTINCT HID) > 1
) X;
