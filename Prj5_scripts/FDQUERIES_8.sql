SELECT 'coffees: HID-->DN' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT HID
  FROM coffees
 GROUP BY HID
 HAVING COUNT(DISTINCT DN) > 1
) X;
