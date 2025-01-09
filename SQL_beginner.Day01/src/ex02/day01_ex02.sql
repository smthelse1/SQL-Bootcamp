//work
SELECT pizza_name
FROM menu
EXCEPT
SELECT NULL
ORDER BY pizza_name DESC

//alternatively
WITH Duplicate AS (SELECT pizza_name, ROW_NUMBER() OVER(PARTITION BY pizza_name ORDER BY pizza_name DESC) AS Dup FROM menu)
SELECT pizza_name
FROM Duplicate
WHERE Dup = 1;