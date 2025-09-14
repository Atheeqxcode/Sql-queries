-- Sample data for Company Database
-- Run this script after creating the tables

-- Insert departments
INSERT INTO departments (department_name, location) VALUES
('Human Resources', 'New York'),
('Information Technology', 'San Francisco'),
('Sales', 'Chicago'),
('Marketing', 'Los Angeles'),
('Finance', 'New York');

-- Insert employees
INSERT INTO employees (first_name, last_name, email, phone, hire_date, salary, department_id) VALUES
('John', 'Smith', 'john.smith@company.com', '555-0101', '2020-01-15', 65000.00, 2),
('Jane', 'Doe', 'jane.doe@company.com', '555-0102', '2019-03-22', 70000.00, 2),
('Mike', 'Johnson', 'mike.johnson@company.com', '555-0103', '2021-06-10', 55000.00, 3),
('Sarah', 'Williams', 'sarah.williams@company.com', '555-0104', '2018-09-05', 80000.00, 1),
('David', 'Brown', 'david.brown@company.com', '555-0105', '2020-11-12', 75000.00, 4),
('Lisa', 'Davis', 'lisa.davis@company.com', '555-0106', '2019-07-18', 68000.00, 5),
('Robert', 'Miller', 'robert.miller@company.com', '555-0107', '2021-02-28', 72000.00, 2),
('Emily', 'Wilson', 'emily.wilson@company.com', '555-0108', '2020-05-14', 62000.00, 3);

-- Update manager relationships
UPDATE employees SET manager_id = 4 WHERE department_id = 1 AND employee_id != 4;
UPDATE employees SET manager_id = 1 WHERE department_id = 2 AND employee_id != 1;
UPDATE employees SET manager_id = 3 WHERE department_id = 3 AND employee_id != 3;
UPDATE employees SET manager_id = 5 WHERE department_id = 4 AND employee_id != 5;
UPDATE employees SET manager_id = 6 WHERE department_id = 5 AND employee_id != 6;

-- Update department managers
UPDATE departments SET manager_id = 4 WHERE department_id = 1;
UPDATE departments SET manager_id = 1 WHERE department_id = 2;
UPDATE departments SET manager_id = 3 WHERE department_id = 3;
UPDATE departments SET manager_id = 5 WHERE department_id = 4;
UPDATE departments SET manager_id = 6 WHERE department_id = 5;

-- Insert projects
INSERT INTO projects (project_name, description, start_date, end_date, budget, status) VALUES
('Customer Portal', 'Development of new customer self-service portal', '2023-01-15', '2023-12-31', 250000.00, 'In Progress'),
('Mobile App Redesign', 'Complete redesign of mobile application', '2023-03-01', '2023-10-15', 180000.00, 'In Progress'),
('Data Migration', 'Migration to new database system', '2023-02-01', '2023-08-30', 120000.00, 'Planning'),
('Marketing Campaign Q4', 'Q4 marketing campaign planning and execution', '2023-10-01', '2023-12-31', 75000.00, 'Planning');

-- Insert employee-project relationships
INSERT INTO employee_projects (employee_id, project_id, role, hours_allocated) VALUES
(1, 1, 'Lead Developer', 40),
(2, 1, 'Senior Developer', 40),
(7, 1, 'Junior Developer', 30),
(1, 3, 'Technical Lead', 20),
(2, 2, 'Lead Developer', 35),
(3, 4, 'Sales Lead', 25),
(8, 4, 'Sales Associate', 20),
(5, 4, 'Marketing Manager', 30);

-- Insert salary history
INSERT INTO salary_history (employee_id, old_salary, new_salary, change_date, reason) VALUES
(1, 60000.00, 65000.00, '2021-01-15', 'Annual raise'),
(2, 65000.00, 70000.00, '2020-03-22', 'Promotion'),
(4, 75000.00, 80000.00, '2019-09-05', 'Performance bonus'),
(6, 65000.00, 68000.00, '2020-07-18', 'Annual raise');