------------DATASET SQL---------------------
-- Drop existing tables
DROP TABLE performance;
DROP TABLE employees;
DROP TABLE departments;

-- Departments
CREATE TABLE departments (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50)
);

INSERT INTO departments VALUES (1, 'HR');
INSERT INTO departments VALUES (2, 'IT');
INSERT INTO departments VALUES (3, 'Sales');

-- Employees
CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    dept_id NUMBER,
    salary NUMBER,
    hire_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO employees VALUES (1, 'Alice', 1, 60000, TO_DATE('2019-05-01', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (2, 'Bob', 1, 75000, TO_DATE('2018-03-15', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (3, 'Carol', 2, 80000, TO_DATE('2020-11-23', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (4, 'David', 2, 90000, TO_DATE('2021-01-10', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (5, 'Emma', 3, 65000, TO_DATE('2019-06-17', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (6, 'Frank', 3, 65000, TO_DATE('2022-08-01', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (7, 'Grace', 1, 72000, TO_DATE('2021-12-11', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (8, 'Henry', 2, 95000, TO_DATE('2017-09-08', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (9, 'Ivy', 3, 69000, TO_DATE('2016-01-03', 'YYYY-MM-DD'));

-- Performance
CREATE TABLE performance (
    emp_id NUMBER,
    review_year NUMBER(4),
    rating NUMBER(3,1),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

INSERT INTO performance VALUES (1, 2023, 4.8);
INSERT INTO performance VALUES (1, 2024, 4.5);
INSERT INTO performance VALUES (2, 2023, 4.9);
INSERT INTO performance VALUES (2, 2024, 4.7);
INSERT INTO performance VALUES (3, 2023, 4.3);
INSERT INTO performance VALUES (4, 2023, 4.6);
INSERT INTO performance VALUES (5, 2024, 4.2);
INSERT INTO performance VALUES (6, 2023, 4.0);
INSERT INTO performance VALUES (7, 2024, 4.7);
INSERT INTO performance VALUES (8, 2023, 4.9);
INSERT INTO performance VALUES (9, 2023, 4.1);
