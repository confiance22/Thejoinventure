# Thejoinventure
This project, "Thejoinventure", was a team effort by Confiance &amp; Edison. We used GitHub to collaborate on PL/SQL window function queries, ensuring shared learning and a cohesive result."
## 👥 Team Members
- Edson MUGABO
- Confiance UFITAMAHORO

## 📌 Instructor GitHub Username: `ericmaniraguha`

## 📂 Project Name: Thejoinventure

## 🎯 Objective
This project demonstrates the use of SQL **Window Functions** in Oracle using a realistic dataset of employees, departments, and performance ratings.

## 🧱 Schema Design
- `employees` – Details of each employee including department and salary.
- `departments` – Lookup table for department names.
- `performance` – Year-wise performance reviews.

## 🧠 Completed Tasks

### ✅ Compare Values with Previous or Next Records
- Used `LAG()` and `LEAD()` on salary to determine if an employee's salary is **HIGHER, LOWER, or EQUAL** to the previous employee.

### ✅ Ranking Data within a Category
- Applied `RANK()` and `DENSE_RANK()` on salary partitioned by department.
- Explained the difference using examples.

### ✅ Identifying Top Records
- Fetched **top 3 highest salaries per department** using `RANK()`.

### ✅ Finding the Earliest Records
- Used `ROW_NUMBER()` to retrieve the **first 2 employees** to join each department.

### ✅ Aggregation with Window Functions
- Calculated **maximum salary** per department and overall.
- Used `PARTITION BY` to distinguish between category-level and overall calculations.

### ✅ Bonus: Performance Trends
- Compared employee ratings year-over-year using `LAG()` and calculated rating changes.

## 🔧 Technology
- Oracle SQL Developer
- GitHub for version control

## 📷 Optional
- Screenshots

---

## 📁 Files Included

- `dataset.sql` – Creates and populates all 3 tables.
- `queries.sql` – All required queries with window functions.
- `README.md` – Project summary, explanation, and documentation.

---

### 🧠 Real-World Applications
- HR analytics
- Yearly employee review tracking
- Department performance monitoring
