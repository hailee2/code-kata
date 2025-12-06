# Write your MySQL query statement below
SELECT
    CASE 
        WHEN id % 2 = 1 AND id = (SELECT MAX(id) FROM Seat) 
            THEN id                           -- 마지막 홀수는 그대로
        WHEN id % 2 = 1 
            THEN id + 1                       -- 홀수 → 다음 번호로
        WHEN id % 2 = 0 
            THEN id - 1                       -- 짝수 → 이전 번호로
    END AS id,
    student
FROM Seat
ORDER BY id;
