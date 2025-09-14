# Assignment 01: Basic SELECT Statements

## Objective
Learn to write basic SELECT queries to retrieve data from database tables.

## Problem Statement

Using the `employees` table from the Company Database, write SQL queries to solve the following problems:

### Table Structure: employees
| Column | Type | Description |
|--------|------|-------------|
| employee_id | INT | Primary key |
| first_name | VARCHAR(50) | Employee's first name |
| last_name | VARCHAR(50) | Employee's last name |
| email | VARCHAR(100) | Employee's email address |
| salary | DECIMAL(10,2) | Employee's annual salary |
| hire_date | DATE | Date employee was hired |
| department_id | INT | Foreign key to departments table |

## Questions

### Q1: Basic SELECT
Write a query to display all columns from the employees table.

### Q2: Specific Columns
Write a query to display only the first name, last name, and email of all employees.

### Q3: Column Aliases
Write a query to display first name as "First Name", last name as "Last Name", and salary as "Annual Salary".

### Q4: DISTINCT Values
Write a query to find all unique department IDs from the employees table.

### Q5: Simple Calculation
Write a query to display each employee's first name, last name, and monthly salary (annual salary divided by 12).

## Expected Output Format

Your queries should return results in a clean, readable format with appropriate column headers.

## Submission

Create your solutions in the `queries.sql` file with each query clearly labeled (Q1, Q2, etc.).

## Hints

- Remember to use semicolons to end each SQL statement
- Use AS keyword for column aliases
- DISTINCT keyword helps find unique values
- Basic arithmetic operations can be performed in SELECT clause