# SQL Queries - Assignment Repository

A comprehensive collection of SQL queries and database assignments organized by topic and difficulty level.

## 📚 Table of Contents

- [Overview](#overview)
- [Repository Structure](#repository-structure)
- [Getting Started](#getting-started)
- [Assignment Categories](#assignment-categories)
- [Database Setup](#database-setup)
- [Query Examples](#query-examples)
- [Assignment Guidelines](#assignment-guidelines)
- [Contributing](#contributing)
- [Resources](#resources)

## Overview

This repository contains SQL assignments, practice queries, and database exercises covering various concepts from basic SELECT statements to advanced database operations. Each assignment includes problem statements, sample data, and solution queries.

## Repository Structure

```
Sql-queries/
├── README.md
├── assignments/
│   ├── basic/
│   │   ├── select-queries/
│   │   ├── filtering-sorting/
│   │   └── aggregate-functions/
│   ├── intermediate/
│   │   ├── joins/
│   │   ├── subqueries/
│   │   └── views-indexes/
│   ├── advanced/
│   │   ├── stored-procedures/
│   │   ├── triggers/
│   │   └── optimization/
│   └── projects/
├── database-schemas/
│   ├── sample-databases/
│   └── setup-scripts/
└── solutions/
    ├── assignment-01/
    ├── assignment-02/
    └── ...
```

## Getting Started

### Prerequisites

- SQL Database Management System (MySQL, PostgreSQL, SQLite, SQL Server, or Oracle)
- SQL client tool (MySQL Workbench, pgAdmin, DBeaver, or command line)
- Basic understanding of database concepts

### Setup Instructions

1. Clone this repository:
   ```bash
   git clone https://github.com/Atheeqxcode/Sql-queries.git
   cd Sql-queries
   ```

2. Choose your preferred database system and install it
3. Import the sample database schemas from `database-schemas/`
4. Start working on assignments from the `assignments/` directory

## Assignment Categories

### 🟢 Basic Level
Perfect for beginners learning SQL fundamentals

#### 1. **Basic SELECT Queries**
- Simple SELECT statements
- Column selection and aliasing
- DISTINCT keyword usage
- **Files:** `assignments/basic/select-queries/`

#### 2. **Filtering and Sorting**
- WHERE clause conditions
- Comparison operators
- ORDER BY clause
- **Files:** `assignments/basic/filtering-sorting/`

#### 3. **Aggregate Functions**
- COUNT, SUM, AVG, MIN, MAX
- GROUP BY clause
- HAVING clause
- **Files:** `assignments/basic/aggregate-functions/`

### 🟡 Intermediate Level
For students comfortable with basic SQL concepts

#### 4. **Table Joins**
- INNER JOIN
- LEFT/RIGHT/FULL OUTER JOIN
- Self joins and cross joins
- **Files:** `assignments/intermediate/joins/`

#### 5. **Subqueries**
- Nested SELECT statements
- Correlated subqueries
- EXISTS and IN operators
- **Files:** `assignments/intermediate/subqueries/`

#### 6. **Views and Indexes**
- Creating and managing views
- Index creation and optimization
- **Files:** `assignments/intermediate/views-indexes/`

### 🔴 Advanced Level
For advanced students and database professionals

#### 7. **Stored Procedures**
- Procedure creation and execution
- Parameters and variables
- Control flow statements
- **Files:** `assignments/advanced/stored-procedures/`

#### 8. **Triggers**
- BEFORE/AFTER triggers
- INSERT/UPDATE/DELETE triggers
- **Files:** `assignments/advanced/triggers/`

#### 9. **Query Optimization**
- Execution plan analysis
- Performance tuning
- **Files:** `assignments/advanced/optimization/`

## Database Setup

### Sample Databases Included

1. **Company Database** - Employee management system
   - Tables: employees, departments, projects, salaries
   - Use cases: HR queries, payroll analysis

2. **E-commerce Database** - Online store system
   - Tables: customers, products, orders, order_items
   - Use cases: Sales analysis, inventory management

3. **Library Database** - Library management system
   - Tables: books, authors, members, borrowings
   - Use cases: Book lending, membership tracking

4. **School Database** - Student information system
   - Tables: students, courses, enrollments, grades
   - Use cases: Academic record management

### Quick Setup Scripts

```sql
-- Example setup for Company Database
SOURCE database-schemas/company-db/create-tables.sql;
SOURCE database-schemas/company-db/insert-sample-data.sql;
```

## Query Examples

### Basic Query Example
```sql
-- Find all employees in the Sales department
SELECT first_name, last_name, salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Sales'
ORDER BY salary DESC;
```

### Intermediate Query Example
```sql
-- Find employees earning above average salary in their department
SELECT e.first_name, e.last_name, e.salary, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);
```

## Assignment Guidelines

### Assignment Format

Each assignment should include:

1. **Problem Statement** (`problem.md`)
   - Clear description of the task
   - Expected output format
   - Sample data provided

2. **SQL Files** (`queries.sql`)
   - Numbered queries (Q1, Q2, etc.)
   - Comments explaining the logic
   - Proper formatting

3. **Expected Results** (`expected-output.txt`)
   - Sample output for verification
   - Column headers included

### File Naming Convention

```
assignment-XX-topic-name/
├── problem.md
├── queries.sql
├── expected-output.txt
└── test-data.sql (if needed)
```

### Query Writing Standards

- Use consistent indentation (2 or 4 spaces)
- Write keywords in UPPERCASE
- Use meaningful table and column aliases
- Add comments for complex queries
- Include semicolons at the end of statements

```sql
-- Good example
SELECT 
    e.first_name AS "First Name",
    e.last_name AS "Last Name",
    d.department_name AS "Department"
FROM employees e
INNER JOIN departments d 
    ON e.department_id = d.department_id
WHERE e.salary > 50000
ORDER BY e.last_name;
```

## Contributing

### Adding New Assignments

1. Create a new branch for your assignment
2. Follow the assignment format guidelines
3. Test queries with sample data
4. Submit a pull request with:
   - Clear description of the assignment
   - Difficulty level indicated
   - Sample solution included

### Reporting Issues

- Use GitHub issues for bug reports
- Include SQL code and error messages
- Specify database system and version

## Resources

### SQL Learning Materials

- **Documentation Links:**
  - [MySQL Documentation](https://dev.mysql.com/doc/)
  - [PostgreSQL Documentation](https://www.postgresql.org/docs/)
  - [SQL Server Documentation](https://docs.microsoft.com/en-us/sql/)

- **Online Practice:**
  - [SQLZoo](https://sqlzoo.net/)
  - [HackerRank SQL](https://www.hackerrank.com/domains/sql)
  - [LeetCode Database](https://leetcode.com/problemset/database/)

### Tools and Software

- **Database Systems:**
  - [MySQL](https://www.mysql.com/downloads/)
  - [PostgreSQL](https://www.postgresql.org/download/)
  - [SQLite](https://www.sqlite.org/download.html)

- **GUI Tools:**
  - [DBeaver](https://dbeaver.io/)
  - [MySQL Workbench](https://www.mysql.com/products/workbench/)
  - [pgAdmin](https://www.pgadmin.org/)

---

## 📝 Assignment Progress Tracker

| Assignment | Topic | Difficulty | Status | Due Date |
|------------|-------|------------|--------|----------|
| 01 | Basic SELECT | 🟢 Basic | ⏳ In Progress | YYYY-MM-DD |
| 02 | WHERE Clause | 🟢 Basic | ❌ Not Started | YYYY-MM-DD |
| 03 | Aggregate Functions | 🟢 Basic | ✅ Completed | YYYY-MM-DD |
| 04 | JOIN Operations | 🟡 Intermediate | ❌ Not Started | YYYY-MM-DD |

*Update this table as you complete assignments*

---

**Happy Coding! 🚀**

For questions or help, please open an issue or contact the repository maintainer.