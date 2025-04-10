# Thejoinventure
This project, "Thejoinventure", was a team effort by Confiance &amp; Edison. We used GitHub to collaborate on PL/SQL window function queries, ensuring shared learning and a cohesive result.
## 👥 Team Members
- Edson MUGABO
- 27185 Confiance UFITAMAHORO

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

  ![Compare Values with Previous or Next Records (Salary)](https://github.com/user-attachments/assets/6f0f6b0e-41f2-44ae-9973-4221a4c0a085)


### ✅ Ranking Data within a Category
- Applied `RANK()` and `DENSE_RANK()` on salary partitioned by department.
- Explained the difference using examples.

  ![Ranking Data within a Category (Salary by Department)](https://github.com/user-attachments/assets/936de423-8729-4bf7-8bb4-b2088ca91283)


### ✅ Identifying Top Records
- Fetched **top 3 highest salaries per department** using `RANK()`.

  ![Identifying Top 3 Records per Department (Highest Salaries)](https://github.com/user-attachments/assets/49140648-7b26-4956-b6d3-33ddfa84c25c)


### ✅ Finding the Earliest Records
- Used `ROW_NUMBER()` to retrieve the **first 2 employees** to join each department.

  ![Finding the Earliest Records (First 2 to Join per Department)](https://github.com/user-attachments/assets/5e5dddee-f7d7-46d0-b492-93e60d2d6391)


### ✅ Aggregation with Window Functions
- Calculated **maximum salary** per department and overall.
- Used `PARTITION BY` to distinguish between category-level and overall calculations.

  ![Aggregation with Window Functions (Max Salaries)](https://github.com/user-attachments/assets/2a713f21-f148-4dce-be9e-ad090618641c)


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


## 🙌 Conclusion

This project provided a hands-on opportunity to explore the power of **SQL Window Functions** in Oracle. By analyzing employee data across departments and performance records, we were able to:

- 🔍 Perform advanced comparisons using `LAG()` and `LEAD()`
- 🧮 Rank and filter data meaningfully with `RANK()`, `DENSE_RANK()`, and `ROW_NUMBER()`
- 📊 Identify trends and key insights through aggregation and partitioning

Through this exercise, we developed a deeper understanding of how window functions can simplify complex data analysis and are essential tools for real-world applications like **HR analytics**, **performance tracking**, and **business intelligence**.

We also learned the importance of:
- Writing clean and optimized SQL queries
- Designing meaningful relational schemas
- Collaborating using GitHub in a professional workflow

> 💡 These skills not only fulfill academic requirements, but also prepare us for real-world problem solving in data-driven industries.

**Thank you for reviewing our work!** 🚀
