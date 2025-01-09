COMMENT ON TABLE person_discounts IS 'Таблица, содержащая информацию об ID заказчиков и пицерий, а также персональные скидки в конкретных пицериях';
COMMENT ON COLUMN person_discounts.id IS 'Уникальный идентификатор каждой записи таблицы';
COMMENT ON COLUMN person_discounts.person_id IS 'ID заказчиков';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'ID пиццерий';
COMMENT ON COLUMN person_discounts.discount IS 'Размер персональной скидки в конкретной пицерии в процентах';







--
COMMENT ON TABLE person_discounts IS NULL;
COMMENT ON COLUMN person_discounts.id IS NULL;
COMMENT ON COLUMN person_discounts.person_id IS NULL;
COMMENT ON COLUMN person_discounts.pizzeria_id IS NULL;
COMMENT ON COLUMN person_discounts.discount IS NULL;