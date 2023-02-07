SELECT sum(duration) as total_time
FROM assignment_submissions join students
ON assignment_submissions.student_id = students.id
where students.name = 'Ibrahim Schimmel';
