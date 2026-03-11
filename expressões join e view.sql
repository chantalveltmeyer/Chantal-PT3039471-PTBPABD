SELECT * FROM student JOIN takes ON student.ID = takes.ID;

SELECT s.ID, s.name, COUNT(t.course_id) AS quantidade_cursos
FROM student s
JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.ID, s.name
ORDER BY quantidade_cursos DESC;

SELECT s.ID, s.name
FROM student s
LEFT JOIN takes t ON s.ID = t.ID
WHERE t.ID IS NULL;


SELECT 
    s.ID,
    s.name,
    COUNT(t.course_id) AS quantidade_cursos
FROM student s
JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.ID, s.name;