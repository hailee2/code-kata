# Write your MySQL query statement below
SELECT p.firstName, p.lastName, t.city, t.state
FROM person p
LEFT JOIN address t
ON p.personId = t.personId