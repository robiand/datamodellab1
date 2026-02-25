--Get information about classes, courses, programs, students and managers with some queries

--Class name and manager full name
SELECT c.class_name, emi.first_name || ' ' || emi.last_name AS manager_name
FROM class c
JOIN education_manager em ON c.manager_id = em.manager_id --Match manager id in education_manager and education_manager_info to get info for this student
JOIN education_manager_info emi ON em.manager_id = emi.manager_id;

--All students and their classes
SELECT si.first_name, si.last_name, c.class_name
FROM student s
JOIN student_info si ON s.student_id = si.student_id --Match student id in student and student_info to get info for this student
JOIN class c ON s.class_id = c.class_id;

--Courses included in each program
SELECT p.program_name, co.course_name, co.course_code
FROM program p
JOIN program_course pc ON p.program_id = pc.program_id
JOIN course co ON pc.course_id = co.course_id
ORDER BY p.program_name;

--Coures per program
SELECT p.program_name, COUNT(pc.course_id) AS number_of_courses
FROM program p
LEFT JOIN program_course pc ON p.program_id = pc.program_id
GROUP BY p.program_name;

--List of all consultants
SELECT ii.first_name || ' ' || ii.last_name AS consultant_name, co.company_name
FROM consultant c
JOIN company co ON c.company_id = co.company_id
JOIN instructor i on c.instructor_id = i.instructor_id --Join consultant and instructor ids to find instructors that are consultant
JOIN instructor_info ii ON i.instructor_id = ii.instructor_id;