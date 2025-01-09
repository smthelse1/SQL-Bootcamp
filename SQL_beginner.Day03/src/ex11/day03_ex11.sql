UPDATE menu
SET price = price - price * 0.1
WHERE pizza_name = 'greek pizza'
















SELECT pizza_name, price
FROM menu
WHERE pizza_name = 'greek pizza'