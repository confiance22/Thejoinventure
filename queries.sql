
----Compare Values with Previous or Next Records (Salary)-----

SELECT 
    e.emp_id, e.name, e.salary, e.hire_date,
    LAG(e.salary) OVER (ORDER BY e.hire_date) AS prev_salary,
    LEAD(e.salary) OVER (ORDER BY e.hire_date) AS next_salary,
    CASE 
        WHEN e.salary > LAG(e.salary) OVER (ORDER BY e.hire_date) THEN 'HIGHER'
        WHEN e.salary < LAG(e.salary) OVER (ORDER BY e.hire_date) THEN 'LOWER'
        ELSE 'EQUAL'
    END AS comparison
FROM employees e;

-----Ranking Data within a Category (Salary by Department)-----

SELECT 
    e.name, d.dept_name, e.salary,
    RANK() OVER (PARTITION BY d.dept_name ORDER BY e.salary DESC) AS rank_in_dept,
    DENSE_RANK() OVER (PARTITION BY d.dept_name ORDER BY e.salary DESC) AS dense_rank
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

------Identifying Top 3 Records per Department (Highest Salaries)------

SELECT *
FROM (
    SELECT 
        e.name, d.dept_name, e.salary,
        RANK() OVER (PARTITION BY d.dept_name ORDER BY e.salary DESC) AS salary_rank
    FROM employees e
    JOIN departments d ON e.dept_id = d.dept_id
)
WHERE salary_rank <= 3;
