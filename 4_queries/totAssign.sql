SELECT day, count(*), sum(duration)
FROM assignments
GROUP BY day
ORDER BY day;