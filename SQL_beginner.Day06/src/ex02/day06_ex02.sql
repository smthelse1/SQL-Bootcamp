WITH cte_pizza_order AS (
SELECT
person_id,
person.name,
menu.pizza_name,
price,
pizzeria_id,
pizzeria.name AS pizzeria_name
FROM person_order
JOIN menu ON menu.id = person_order.menu_id
JOIN person ON person.id = person_order.person_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id)
SELECT
cte_pizza_order.name,
cte_pizza_order.pizza_name,
cte_pizza_order.price,
(price - price * person_discounts.discount/ 100)::REAL AS discount_price,
cte_pizza_order.pizzeria_name
FROM person_discounts
JOIN cte_pizza_order ON person_discounts.person_id = cte_pizza_order.person_id AND person_discounts.pizzeria_id = cte_pizza_order.pizzeria_id
ORDER BY name, pizza_name;