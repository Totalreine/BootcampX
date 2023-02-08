SELECT assignments.id, assignments.day, assignments.chapter, assignments.name, 
count(assistance_requests.*) as total_assistance_requests
FROM assistance_requests
JOIN assignments ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_assistance_requests DESC;
