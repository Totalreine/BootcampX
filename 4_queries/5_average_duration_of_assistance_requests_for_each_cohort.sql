SELECT avg(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_request_cohort,
cohorts.name as cohort_name
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohort_name
ORDER BY average_assistance_request_cohort;
