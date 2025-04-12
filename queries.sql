
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

-----Finding the Earliest Records (First 2 to Join per Department)-----

SELECT *
FROM (
    SELECT 
        e.name, d.dept_name, e.hire_date,
        ROW_NUMBER() OVER (PARTITION BY d.dept_name ORDER BY e.hire_date) AS join_order
    FROM employees e
    JOIN departments d ON e.dept_id = d.dept_id
)
WHERE join_order <= 2;

-------Aggregation with Window Functions (Max Salaries)------

SELECT 
    e.name, d.dept_name, e.salary,
    MAX(e.salary) OVER (PARTITION BY d.dept_name) AS max_in_dept,
    MAX(e.salary) OVER () AS overall_max
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

-----Bonus: Performance Trends Using LAG()-------

SELECT 
    e.name, p.review_year, p.rating,
    LAG(p.rating) OVER (PARTITION BY p.emp_id ORDER BY p.review_year) AS last_year_rating,
    p.rating - LAG(p.rating) OVER (PARTITION BY p.emp_id ORDER BY p.review_year) AS rating_change
FROM performance p
JOIN employees e ON p.emp_id = e.emp_id;

