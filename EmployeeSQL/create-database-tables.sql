-- Database: sql-challenge

-- DROP DATABASE "sql-challenge";

CREATE DATABASE "sql-challenge"
    WITH 
    OWNER = adamahrens
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

COMMENT ON DATABASE "sql-challenge"
    IS 'SQL Challenge for U of M Bootcamp';
	
CREATE TABLE "department_employee" (
   "emp_no" INT   NOT NULL,
   "dept_no" VARCHAR(15)   NOT NULL,
   "from_date" DATE   NOT NULL,
   "to_date" DATE   NOT NULL
);

CREATE TABLE "department_manager" (
    "dept_no" VARCHAR(15)   NOT NULL,
    "emp_no" INT   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR(15)   NOT NULL,
    "dept_name" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     ),
    CONSTRAINT "uc_Departments_dept_name" UNIQUE (
        "dept_name"
    )
);

CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(100)   NOT NULL,
    "last_name" VARCHAR(100)   NOT NULL,
    "gender" VARCHAR(10)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "titles" (
    "emp_no" INT   NOT NULL,
    "title" VARCHAR(100)   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" float(2)   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE INDEX "idx_titles_emp_no"
ON "titles" ("emp_no");

CREATE INDEX "idx_salaries_emp_no"
ON "salaries" ("emp_no");