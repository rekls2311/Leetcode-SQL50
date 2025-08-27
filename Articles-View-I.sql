-- Write your PostgreSQL query statement below
SELECT distinct author_id as ID
FROM VIEWS
WHERE author_id = viewer_id
ORDER BY author_id asc 
