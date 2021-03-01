SELECT day, count(id) AS total_assignments
FROM assignments
GROUP BY day
ORDER BY day;