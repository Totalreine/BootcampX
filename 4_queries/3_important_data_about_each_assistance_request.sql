SELECT assignments.name as assignment_name, teachers.name as teacher_name, students.name as student_name, 
assistance_requests.completed_at - assistance_requests.started_at as duration
FROM assistance_requests 
JOIN assignments ON assignments.id = assistance_requests.assignment_id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
ORDER BY duration;
