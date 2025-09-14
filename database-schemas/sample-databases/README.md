# Sample Databases

This directory contains sample database schemas for practicing SQL queries.

## Available Databases

### 1. Company Database (`company-db/`)
- **Tables:** employees, departments, projects, salaries
- **Use cases:** HR queries, payroll analysis, employee management

### 2. E-commerce Database (`ecommerce-db/`)
- **Tables:** customers, products, orders, order_items, categories
- **Use cases:** Sales analysis, inventory management, customer analytics

### 3. Library Database (`library-db/`)
- **Tables:** books, authors, members, borrowings, genres
- **Use cases:** Book lending, membership tracking, library operations

### 4. School Database (`school-db/`)
- **Tables:** students, courses, enrollments, grades, teachers
- **Use cases:** Academic record management, student performance analysis

## Setup Instructions

1. Choose a database system (MySQL, PostgreSQL, SQLite, etc.)
2. Navigate to the desired database directory
3. Run the setup scripts in order:
   ```sql
   SOURCE create-tables.sql;
   SOURCE insert-sample-data.sql;
   ```

## Database ERD

Each database directory includes an Entity Relationship Diagram (ERD) showing table relationships.