INSERT INTO menu
values (
(SELECT MAX(id) + 1 FROM menu),
(SELECT id FROM pizzeria WHERE name = 'Dominos'),
'sicilian pizza',
900
)

SELECT * FROM menu
WHERE id = 20;