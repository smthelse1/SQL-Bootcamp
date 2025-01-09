SELECT DISTINCT d.visit_date AS missing_date
FROM (SELECT visit_date FROM person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-10') AS d
LEFT JOIN (SELECT visit_date, person_id 
		  FROM person_visits
		  WHERE (person_visits.person_id = 1 OR person_visits.person_id = 2) AND visit_date BETWEEN '2022-01-01' AND '2022-01-10') AS pv
		  ON pv.visit_date = d.visit_date
WHERE pv.person_id IS NULL
ORDER BY missing_date