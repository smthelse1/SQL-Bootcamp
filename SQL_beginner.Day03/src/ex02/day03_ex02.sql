SELECT menu.pizza_name, menu.price, pizzeria.name AS pizzeria_name
FROM menu, pizzeria
WHERE menu.pizzeria_id = pizzeria.id AND NOT EXISTS(SELECT * FROM person_order WHERE person_order.menu_id = menu.id)
ORDER BY pizza_name, price