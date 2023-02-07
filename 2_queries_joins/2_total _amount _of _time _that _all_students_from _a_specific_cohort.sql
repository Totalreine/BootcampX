SELECT sum(assignment_submissions.duration) as total_time
FROM assignment_submissions join students
ON assignment_submissions.student_id = students.id
join cohorts on students.cohort_id = cohorts.id 
where cohorts.name = 'FEB12';