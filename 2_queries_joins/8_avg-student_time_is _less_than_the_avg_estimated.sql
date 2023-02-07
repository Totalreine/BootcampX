SELECT students.name as student_name, avg(assignment_submissions.duration) as avg_student_completion_time,
avg(assignments.duration) as avg_suggested_completion_time
FROM students 
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY student_name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg_student_completion_time;