SELECT s1.student_id,s1.student_name, s2.subject_name,count(e.student_id) as attended_exams
FROM students AS s1
JOIN subjects as s2 
LEFT JOIN Examinations as e ON s1.student_id = e.student_id and s2.subject_name = e.subject_name
group by s1.student_id,s1.student_name, s2.subject_name
ORDER BY s1.student_id,s1.student_name
