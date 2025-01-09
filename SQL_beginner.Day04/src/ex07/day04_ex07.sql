INSERT INTO person_visits
VALUES
(
	(SELECT MAX(id) FROM person_visits) + 1,
	(SELECT id FROM person WHERE name = 'Dmitriy'),
	(SELECT DISTINCT pizzeria.id FROM pizzeria
	JOIN mv_dmitriy_visits_and_eats ON mv_dmitriy_visits_and_eats.pizzeria_name != pizzeria.name
	JOIN menu ON menu.pizzeria_id = pizzeria.id
	WHERE menu.price < 800 LIMIT 1),
	'2022-01-08'
);

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;








SELECT * FROM public.mv_dmitriy_visits_and_eats