SELECT students.name AS student, 
AVG(assignment_submissions.duration) AS average_assignment_duration,
AVG(assignments.duration) AS average_estimate_duration
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration ASC;