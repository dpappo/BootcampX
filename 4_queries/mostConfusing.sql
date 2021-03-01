SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, COUNT(assistance_requests.*) as total_requests
FROM assignments
JOIN assistance_requests ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC;