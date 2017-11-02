SELECT 'rentals: HID-->PN' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT HID
  FROM rentals
 GROUP BY HID
 HAVING COUNT(DISTINCT PN) > 1
) X;

