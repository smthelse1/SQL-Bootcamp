SELECT (SELECT name FROM person WHERE person.id = pv.person_id) AS person_name ,
        (SELECT name FROM pizzeria WHERE pizzeria.id = pv.pizzeria_id) AS pizzeria_name
FROM person_visits pv
WHERE pv.visit_date BETWEEN '2022-01-07' AND '2022-01-09'
ORDER BY (SELECT name FROM person WHERE person.id = pv.person_id) ASC,
(SELECT name FROM pizzeria WHERE pizzeria.id = pv.pizzeria_id) DESC
