SELECT order_date AS action_date, person_id
FROM person_order
WHERE (person_id, order_date) IN (SELECT person_id, visit_date FROM person_visits)
ORDER BY action_date ASC, person_id DESC