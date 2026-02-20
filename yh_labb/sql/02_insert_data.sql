INSERT INTO program(program_name) VALUES
("System Developer"),
("Data Engineer"),
("UX Developer");

INSERT INTO class(class_name, manager_id, program_id) VALUES
("SD25", 1, 1),
("DE25", 1, 2),
("UX25", 2, 3);

INSERT INTO student(class_id) VALUES
(1),
(2),
(3);

INSERT INTO student_info(student_id, first_name, last_name, address, email, personal_id_number) VALUES
(1, "Jakob", "Berg", "Storgatan 32", "jaberg@gmail.com", "20010101-1234"),
(2, "Sten", "Scott", "Trafikvägen 20", "stenscott@hotmail.com", "19991224-3456"),
(3, "Sara", "Strand", "Strandvägen 52", "sstrand@gmail.com", "20020512-6544"),
(4, "Vera", "Oldman", "Historietorget 12", "veraoldman@yahoo.com", "18880425-6234"),
(5, "Åke", "Vrålåk", "Garagegatan 45". "vralak@protonmail.com", "198602191835");

INSERT INTO course(course_id, course_name, course_code, course_points, course_desc) VALUES
(1, "Programming 1", "PG1", 50, "Intro to programming"),
(2, "Programming 2", "PG2", 40, "Intermediate programming"),
(3, "SQL 1", "SQL1", 40, "Basic SQL introduction"),
(4, "Graphic Interface Design", "GID", 40, "How to design graphic interfaces"),
(5, "System Development 1", "SD1", 60, "Creation of backend systems start to finish"),
(6, "Data Modelling", "DM", 30, "Course on how to create data models");

INSERT INTO instructor_info(instructor_id, first_name, last_name, address, email, personal_id_number) VALUES
(1, "Jonas", "Jonsson", "Pluggerivägen 62", "jonjonsson@yrkco.com", "19820516-6136");

INSERT INTO program_course(program_id, course_id) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO course_instructor(course_id, instructor_id) VALUES
(1, 1),
(2, 2);

INSERT INTO company(company_id, company_name, company_address, org_number, has_f_tax) VALUES
(1, "ConsulCo", "Industriparken 24", "58284636-1064", false),
(2, "ProCon", "Arbetsgatan 1", "46375637-1974", true);

INSERT into consultant(consultant_id, company_id, instructor_id, hourly_rate) VALUES
(1, 1, 1, 500),