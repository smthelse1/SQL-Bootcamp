WITH ppizza(pepperoni) AS (
SELECT person.name 
FROM person_order
JOIN person ON person_order.person_id = person.id
JOIN menu ON menu.id = person_order.menu_id
WHERE person.gender = 'female' AND pizza_name = 'pepperoni pizza'
ORDER BY name
),
dpizza(cheese) AS (
SELECT person.name 
FROM person_order
JOIN person ON person_order.person_id = person.id
JOIN menu ON menu.id = person_order.menu_id
WHERE person.gender = 'female' AND pizza_name = 'cheese pizza'
)
SELECT person.name FROM person 
JOIN ppizza ON ppizza.pepperoni = person.name
JOIN dpizza ON dpizza.cheese = person.name