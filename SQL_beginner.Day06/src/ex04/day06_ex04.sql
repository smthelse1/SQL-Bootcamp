ALTER TABLE person_discounts ADD CONSTRAINT ch_nn_person_id CHECK (person_id IS NOT NULL);
ALTER TABLE person_discounts ADD CONSTRAINT ch_nn_pizzeria_id CHECK (pizzeria_id IS NOT NULL);
ALTER TABLE person_discounts ADD CONSTRAINT ch_nn_discount CHECK (discount IS NOT NULL);
ALTER TABLE person_discounts ALTER COLUMN discount SET DEFAULT 0.00;
ALTER TABLE person_discounts ADD CONSTRAINT ch_range_discount CHECK (discount BETWEEN 0.00 AND 100.00);


--SELECT * FROM person_discounts;

ALTER TABLE person_discounts DROP CONSTRAINT ch_nn_person_id;
ALTER TABLE person_discounts DROP CONSTRAINT ch_nn_pizzeria_id;
ALTER TABLE person_discounts DROP CONSTRAINT ch_nn_discount;
ALTER TABLE person_discounts DROP CONSTRAINT ch_range_discount;
ALTER TABLE person_discounts ALTER COLUMN discount DROP DEFAULT;