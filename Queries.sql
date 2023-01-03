
--List the employee number, last name, first name, 
--sex, and salary of each employee.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s
on e.emp_no=s.emp_no;

--List the first name, last name, and hire date for 
--the employees who were hired in 1986.
select e.last_name, e.first_name, e.hire_date
from employees e
where extract( year from e.hire_date ) = 1986




--List the manager of each department along with their department number, 
--department name,employee number, last name, and first name.
select e.last_name, e.first_name,dept_manager.dept_no, 
dept_manager.emp_no, departments.dept_name
from dept_manager
left join employees e
on e.emp_no = dept_manager.emp_no
left join departments
on dept_manager.dept_no = departments.dept_no
 
 
-- List the department number for each employee along with that employee’s 
-- employee number, last name, first name, and department name.
select dept_emp.dept_no, e.last_name, e.first_name, e.emp_no, 
departments.dept_name
from dept_emp
left join employees e
on dept_emp.emp_no = e.emp_no
left join departments
on departments.dept_no = dept_emp.dept_no

--List first name, last name, and sex of each employee whose first name is
--Hercules and whose last name begins with the letter B.
select  e.first_name, e.last_name, e.sex
from employees e
where e.first_name ='Hercules'
and e.last_name ='B%'

--List each employee in the Sales department, including 
--their employee number, last name, and first name.
select e.last_name, e.first_name, e.emp_no, 
departments.dept_name
from dept_emp
left join employees e
on dept_emp.emp_no = e.emp_no
left join departments
on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales'

--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, 
--and department name.
select e.last_name, e.first_name, e.emp_no, 
departments.dept_name
FROM dept_emp
left join employees e
on dept_emp.emp_no = e.emp_no
left join departments
on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales'
OR departments.dept_name = 'Development'

--List the frequency counts, in descending order, of all the employee 
--last names(that is, how many employees share each last name).
select last_name, Count(last_name)
from employees s
group by last_name
order by Count(last_name) desc


















































































