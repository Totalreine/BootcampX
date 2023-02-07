SELECT cohorts.name, count(students.*) 
FROM cohorts 
join students ON cohorts.id = students.cohort_id
group by cohorts.name
having count(*) >= 18
order by count(students.*);