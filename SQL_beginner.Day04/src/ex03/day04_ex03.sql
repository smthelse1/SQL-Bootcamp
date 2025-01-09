SELECT DISTINCT g_days AS missing_date
FROM v_generated_dates
LEFT JOIN person_visits ON v_generated_dates.g_days = person_visits.visit_date
WHERE person_visits.visit_date IS NULL
ORDER BY missing_date