SELECT name FROM v_persons_female WHERE gender = 'female'
UNION
SELECT name FROM v_persons_male WHERE gender = 'male'
ORDER BY name