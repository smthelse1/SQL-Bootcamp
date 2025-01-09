INSERT INTO person_discounts(id, person_id, pizzeria_id, discount)
SELECT 
ROW_NUMBER() OVER() AS id,
person_id,
pizzeria_id,
(CASE
WHEN COUNT(person_order.person_id) = 1 THEN 10.50
WHEN COUNT(person_order.person_id) = 2 THEN 22.00
ELSE 30.00 END ) AS discount_percent
FROM person_order
JOIN menu ON person_order.menu_id = menu.id
GROUP BY person_order.person_id, menu.pizzeria_id
ORDER BY person_order.person_id;


--SELECT * FROM person_discounts;