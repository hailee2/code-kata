# Write your MySQL query statement below
WITH first_login AS (
    SELECT player_id,
           MIN(event_date) as first_date
    FROM Activity
    GROUP BY player_id       
),
next_day_login AS (
    SELECT f.player_id
    FROM first_login f
    JOIN Activity a
    ON a.player_id = f.player_id
    AND a.event_date = DATE_ADD(f.first_date,INTERVAL 1 DAY)
)
SELECT ROUND(
    COUNT(DISTINCT next_day_login.player_id)/COUNT(DISTINCT first_login.player_id),2
    )AS fraction
FROM first_login
LEFT JOIN next_day_login ON first_login.player_id = next_day_login.player_id    