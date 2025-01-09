SELECT person.name AS person_name, menu.pizza_name AS pizza_name, pizzeria.name AS pizzeria_name
FROM person
JOIN person_visits ON person.id = person_visits.person_id
JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
JOIN person_order ON pizzeria.id = person_order.id
JOIN menu ON person_order.id = menu.id
ORDER BY person_name, pizza_name, pizzeria_name