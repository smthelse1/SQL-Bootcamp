SELECT id,
CASE WHEN (ID % 2) = 0 THEN 'Четный'
WHEN(ID % 2) = 1 THEN 'Нечетный'
ELSE 'idk'
END AS qwe
FROM person_order
WHERE (ID % 2) = 0
ORDER BY id

//2                    //без стоблца Четный и Нечетный
SELECT id
FROM person_order
WHERE (id % 2) = 0
ORDER BY id;