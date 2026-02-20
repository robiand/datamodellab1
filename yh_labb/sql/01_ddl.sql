CREATE TABLE "student" (
  "student_id" INTEGER PRIMARY KEY,
  "class_id" integer NOT NULL
);

CREATE TABLE "student_info" (
  "student_id" integer PRIMARY KEY NOT NULL,
  "first_name" varchar(50) NOT NULL,
  "last_name" varchar(50) NOT NULL,
  "address" varchar(100) NOT NULL,
  "email" varchar(100) NOT NULL,
  "personal_id_number" varchar(13) NOT NULL
);

CREATE TABLE "class" (
  "class_id" integer PRIMARY KEY,
  "class_name" varchar(100),
  "manager_id" integer NOT NULL,
  "program_id" integer NOT NULL
);

CREATE TABLE "education_manager" (
  "manager_id" integer PRIMARY KEY
);

CREATE TABLE "education_manager_info" (
  "manager_id" integer PRIMARY KEY NOT NULL,
  "first_name" varchar(50) NOT NULL,
  "last_name" varchar(50) NOT NULL,
  "address" varchar(100) NOT NULL,
  "email" varchar(100) NOT NULL,
  "personal_id_number" varchar(13)
);

CREATE TABLE "program" (
  "program_id" integer PRIMARY KEY,
  "program_name" varchar(50)
);

CREATE TABLE "instructor" (
  "instructor_id" integer PRIMARY KEY
);

CREATE TABLE "instructor_info" (
  "instructor_id" integer PRIMARY KEY NOT NULL,
  "first_name" varchar(50),
  "last_name" varchar(50),
  "address" varchar(100),
  "email" varchar(100) NOT NULL,
  "personal_id_number" varchar(13)
);

CREATE TABLE "program_course" (
  "program_id" integer NOT NULL,
  "course_id" integer NOT NULL,
  PRIMARY KEY ("program_id", "course_id")
);

CREATE TABLE "course" (
  "course_id" integer PRIMARY KEY,
  "course_name" varchar(100) NOT NULL,
  "course_code" varchar(16) NOT NULL,
  "course_points" integer,
  "course_desc" varchar(255)
);

CREATE TABLE "course_instructor" (
  "course_id" integer NOT NULL,
  "instructor_id" integer NOT NULL,
  PRIMARY KEY ("course_id", "instructor_id")
);

CREATE TABLE "company" (
  "company_id" integer PRIMARY KEY,
  "company_name" varchar(50),
  "company_address" varchar(100),
  "org_number" varchar(13),
  "has_f_tax" bool
);

CREATE TABLE "consultant" (
  "consultant_id" integer PRIMARY KEY,
  "company_id" integer NOT NULL,
  "instructor_id" integer NOT NULL,
  "hourly_rate" integer
);

ALTER TABLE "student" ADD FOREIGN KEY ("class_id") REFERENCES "class" ("class_id");

ALTER TABLE "student_info" ADD FOREIGN KEY ("student_id") REFERENCES "student" ("student_id");

ALTER TABLE "class" ADD FOREIGN KEY ("manager_id") REFERENCES "education_manager" ("manager_id");

ALTER TABLE "class" ADD FOREIGN KEY ("program_id") REFERENCES "program" ("program_id");

ALTER TABLE "education_manager_info" ADD FOREIGN KEY ("manager_id") REFERENCES "education_manager" ("manager_id");

ALTER TABLE "instructor_info" ADD FOREIGN KEY ("instructor_id") REFERENCES "instructor" ("instructor_id");

ALTER TABLE "program_course" ADD FOREIGN KEY ("program_id") REFERENCES "program" ("program_id");

ALTER TABLE "program_course" ADD FOREIGN KEY ("course_id") REFERENCES "course" ("course_id");

ALTER TABLE "course_instructor" ADD FOREIGN KEY ("course_id") REFERENCES "course" ("course_id");

ALTER TABLE "course_instructor" ADD FOREIGN KEY ("instructor_id") REFERENCES "instructor" ("instructor_id");

ALTER TABLE "consultant" ADD FOREIGN KEY ("company_id") REFERENCES "company" ("company_id");

ALTER TABLE "consultant" ADD FOREIGN KEY ("instructor_id") REFERENCES "instructor" ("instructor_id");
