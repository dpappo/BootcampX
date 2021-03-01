SELECT COUNT(assistance_requests.*) AS total_assistances, teachers.name
FROM teachers
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY name;