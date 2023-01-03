
create table titles(
title_id VARCHAR(255) Primary key NOT NULL,
title VARCHAR(255) not null
)

create table departments(
dept_no VARCHAR(255) Primary key NOT NULL, 
dept_name VARCHAR(255) not null
)

create table salaries(
emp_no  INTEGER Primary key NOT NULL,
salary INTEGER not null
)


create table employees(
emp_no INTEGER NOT NULL,
emp_title_id VARCHAR(255) not null,
birth_date date not null ,
first_name VARCHAR(255) not null,
last_name VARCHAR(255) not null,	
sex	VARCHAR(255) not null,
hire_date date not null
PRIMARY KEY (emp_no),
FOREIGN KEY(emp_title_id) REFERENCES titles (emp_title_id)
)


create table dept_manager(
dept_no VARCHAR(255) not NULL,
emp_no INTEGER not null,
PRIMARY KEY (dept_no,emp_no),
FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
)


create table dept_emp(
emp_no INTEGER  NOT NULL,
dept_no VARCHAR(255) not null,
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
)


