 SELECT pizza.pizza_name, pizzeria.name, pizza.price
 FROM (SELECT pizza_name, pizzeria_id, price FROM menu WHERE pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza') AS pizza
 FULL JOIN pizzeria ON pizza.pizzeria_id = pizzeria.id
 WHERE pizza.pizza_name IS NOT NULL
 ORDER BY pizza.pizza_name, pizzeria.name