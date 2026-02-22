INSERT INTO program(program_name) VALUES
('System Developer'),
('Data Engineer'),
('UX Developer');

--Create education managers with default serial manager_id values
INSERT INTO education_manager DEFAULT VALUES;
INSERT INTO education_manager DEFAULT VALUES;

INSERT INTO education_manager_info(manager_id, first_name, last_name, address, email, personal_id_number) VALUES
(1, 'Jonas', 'Jonsson', 'Pluggerivägen 62', 'jonjonsson@yrkco.com', '19820516-6136'),
(2, 'Hugo', 'Boss', 'Bossbacken 1', 'huboss@yrkco.com', '19990919-1919');

INSERT INTO class(class_name, manager_id, program_id) VALUES
('SD25', 1, 1),
('DE25', 1, 2),
('UX25', 2, 3);

INSERT INTO student(class_id) VALUES
(1),
(2),
(2),
(3),
(3);

INSERT INTO student_info(student_id, first_name, last_name, address, email, personal_id_number) VALUES
(1, 'Jakob', 'Berg', 'Storgatan 32', 'jaberg@gmail.com', '20010101-1234'),
(2, 'Sten', 'Scott', 'Trafikvägen 20', 'stenscott@hotmail.com', '19991224-3456'),
(3, 'Sara', 'Strand', 'Strandvägen 52', 'sstrand@gmail.com', '20020512-6544'),
(4, 'Vera', 'Oldman', 'Historietorget 12', 'veraoldman@yahoo.com', '18880425-6234'),
(5, 'Åke', 'Vrålåk', 'Garagegatan 45', 'vralak@protonmail.com', '198602191835');

INSERT INTO course(course_name, course_code, course_points, course_desc) VALUES
('Programming 1', 'PG1', 50, 'Intro to programming'),
('Programming 2', 'PG2', 40, 'Intermediate programming'),
('SQL 1', 'SQL1', 40, 'Basic SQL introduction'),
('Graphic Interface Design', 'GID', 80, 'How to design graphic interfaces'),
('System Development 1', 'SD1', 60, 'Creation of backend systems start to finish'),
('Data Modelling', 'DM', 40, 'Course on how to create data models');

INSERT INTO instructor DEFAULT VALUES;
INSERT INTO instructor DEFAULT VALUES;
INSERT INTO instructor DEFAULT VALUES;

INSERT INTO instructor_info(instructor_id, first_name, last_name, address, email, personal_id_number) VALUES
(1, 'John', 'Codeman', 'Datorgatan 64', 'johncode@yrkco.com', '19700101-0000'),
(2, 'Gertrude', 'Userinterface', 'Grafikvägen 14', 'gui@yrkco.com', '19750305-1231'),
(3, 'Sam', 'Systeman', 'Peppargatan 24', 'samsys@yrkco.com', '19000101-2300');

INSERT INTO program_course(program_id, course_id) VALUES
(1, 1),
(1, 2),
(1, 5),
(2, 1),
(2, 3),
(2, 6),
(3, 4);

INSERT INTO course_instructor(course_id, instructor_id) VALUES
(1, 1),
(2, 1),
(5, 3);

INSERT INTO company(company_name, company_address, org_number, has_f_tax) VALUES
('ConsulCo', 'Industriparken 24', '58284636-1064', false),
('ProCon', 'Arbetsgatan 1', '46375637-1974', true);

INSERT into consultant(company_id, instructor_id, hourly_rate) VALUES
(1, 1, 500);