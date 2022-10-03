drop table if exists employees;

Create TABLE "employees" (
    "emp_no" INT NOT NULL,
	"emp_title" VARCHAR NOT NULL,
	"birth_date" DATE NOT NULL,
	"first_name" VARCHAR NOT NULL, 
	"last_name" VARCHAR NOT NULL,
	"sex" VARCHAR NOT NULL,
	"hire_date" DATE NOT NULL,
	CONSTRAINT "pk_employees" PRIMARY KEY("emp_no")
);
select * from employees;


drop table if exists dept_manager;
CREATE TABLE "dept_manager"(
	"dept_no" VARCHAR NOT NULL,
	"emp_no" INT NOT NULL
);
	
select * from dept_manager;

drop table if exists dept_emp;
CREATE TABLE "dept_emp"(
	"emp_no" INT NOT NULL,
	"dept_name" VARCHAR NOT NULL

);
 select * from dept_emp;
 drop table if exists departments;
 CREATE TABLE "departments"(
 	"dept_no" VARCHAR NOT NULL,
	"dept_name" VARCHAR NOT NULL,
	CONSTRAINT "pk_departments" PRIMARY KEY("dept_no")
 );

select * from departments;

CREATE TABLE "salaries"(
	"emp_no" INT NOT NULL,
	"salary" INT NOT NULL
);

select * from salaries;

drop table if exists titles;
CREATE TABLE "titles"(
	"title_id" VARCHAR NOT NULL,  
	"title" VARCHAR NOT NULL
);

select * from titles;


ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

select * from dept_emp;

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

select * from dept_manager;

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");




