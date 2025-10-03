SELECT 
    a.machine_id,
    ROUND(AVG(a.duration),3) AS processing_time
FROM (
    SELECT 
        s.machine_id,
        s.process_id,
        (e.timestamp - s.timestamp) AS duration
    FROM activity s
    JOIN activity e
        ON s.machine_id = e.machine_id
        AND s.process_id = e.process_id
        AND s.activity_type = 'start'
        AND e.activity_type = 'end'
) a
GROUP BY a.machine_id;