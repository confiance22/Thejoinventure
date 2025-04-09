
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


