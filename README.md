# sql-challenge

This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

In the data modeling section, inspected the CSV files, and then sketched an Entity Relationship Diagram of the tables using QuickDBD.

In the data engineering section, used the provided information to create a table schema for each of the six CSV files. To be more specific, specifing the data types, primary keys, foreign keys, and other constraints. For the primary keys, verified that the column is unique. Otherwise, created a composite key  which takes two primary keys to uniquely identify a row. Created the tables in the correct order to handle the foreign keys. Finally, imported each CSV file into its corresponding SQL table.

In the data analysis, wrote the queries to answer the below questions.

-List the employee number, last name, first name, sex, and salary of each employee.

-List the first name, last name, and hire date for the employees who were hired in 1986.

-List the manager of each department along with their department number, department name, employee number, last name, and first name.

-List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

-List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

-List each employee in the Sales department, including their employee number, last name, and first name.

-List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

