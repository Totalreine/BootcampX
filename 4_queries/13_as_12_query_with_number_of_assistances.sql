SELECT DISTINCT teachers.name as teacher_name, cohorts.name as cohort_name, 
count(assistance_requests) as total_requests
FROM teachers
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher_name, cohort_name
ORDER BY teacher_name;