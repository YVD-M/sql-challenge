-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


DROP Table "employees" Cascade;
DROP Table "departments" Cascade;
DROP Table "dept_manager" Cascade;
DROP Table "dept_emp" Cascade;
DROP Table "salaries" Cascade;
DROP Table "titles" Cascade;


CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar(300)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(300)   NOT NULL,
    "last_name" varchar(300)   NOT NULL,
    "sex" varchar(300)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR(30)   NOT NULL,
    "dept_name" VARCHAR(300)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(30)   NOT NULL,
    "emp_no" INT   NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR(40)   NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(300)   NOT NULL,
    "title" VARCHAR(40)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);


