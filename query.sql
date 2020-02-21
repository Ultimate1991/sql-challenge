CREATE TABLE "departments" (
    "dept_no" VARCHAR(30)   NOT NULL,
    "dept_name" varchar(30)   NOT NULL,
    CONSTRAINT "id_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "birthdate" date   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "gender" varchar   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "id_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE "titles" (
    "emp_no" int   NOT NULL,
    "title" varchar(30)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE "dept_employee" (
    "emp_no" int   NOT NULL,
    "dept_no" VARCHAR(30)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(30)   NOT NULL,
    "emp_no" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

ALTER TABLE "salaries" ADD CONSTRAINT "id_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");
ALTER TABLE "titles" ADD CONSTRAINT "id_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");
ALTER TABLE "dept_employee" ADD CONSTRAINT "id_dept_employee_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");
ALTER TABLE "dept_employee" ADD CONSTRAINT "id_dept_employee_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");
ALTER TABLE "dept_manager" ADD CONSTRAINT "id_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");
ALTER TABLE "dept_manager" ADD CONSTRAINT "id_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

SELECT * FROM employees;

SELECT * FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';