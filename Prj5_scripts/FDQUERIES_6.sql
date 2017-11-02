SELECT 'coffees: HID-->DID' AS FD, CASE WHEN COUNT(*)=0 THEN 'Gildir' ELSE 'Gildir ekki' END AS VALIDITY
FROM(
 SELECT HID
  FROM coffees
 GROUP BY HID
 HAVING COUNT(DISTINCT DID) > 1
) X;
