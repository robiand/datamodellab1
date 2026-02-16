Table student {
  student_id INTEGER [pk]
  class_id integer [not null, ref: - class.class_id]
}

Table student_info{
  student_id integer [pk, not null, ref: > student.student_id]
  first_name varchar(50) [not null]
  last_name varchar(50) [not null]
  address varchar(100) [not null]
  email varchar(100) [not null]
  personal_id_number varchar(13) [not null]
}

Table class{
  class_id integer [primary key]
  class_name varchar(100)
  manager_id integer [not null, ref: - education_manager.manager_id]
  program_id integer [not null, ref: - program.program_id]
}

Table education_manager{
  manager_id integer [primary key]
}

Table education_manager_info{
  manager_id integer [pk, not null, ref: > education_manager.manager_id]
  first_name varchar(50) [not null]
  last_name varchar(50) [not null]
  address varchar(100) [not null]
  email varchar(100) [not null]
  personal_id_number varchar(13)
}

Table program{
  program_id integer [pk]
  program_name varchar(50)
}

Table instructor{
  instructor_id integer [pk]
}

Table instructor_info{
  instructor_id integer [pk, not null, ref: > instructor.instructor_id]
  first_name varchar(50)
  last_name varchar(50)
  address varchar(100)
  email varchar(100) [not null]
  personal_id_number varchar(13)
}

Table program_course{
  program_id integer [pk, not null, ref: > program.program_id]
  course_id integer [pk, not null, ref: > course.course_id]
}

Table course{
  course_id integer [pk]
  course_name varchar(100) [not null]
  course_code varchar(16) [not null]
  course_points integer
  course_desc varchar(255)
}

Table course_instructor{
  course_id integer [pk, not null, ref: > course.course_id]
  instructor_id integer [pk, not null, ref: > instructor.instructor_id]
}

Table company{
  company_id integer [pk]
  company_name varchar(50)
  company_address varchar(100)
  org_number varchar(13)
  has_f_tax bool
}

Table consultant{
  consultant_id integer [pk]
  company_id integer [not null, ref: - company.company_id]
  instructor_id integer [not null, ref: - instructor.instructor_id]
  hourly_rate integer
}
