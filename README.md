# Employee and Department Management System

This project demonstrates the design and implementation of a relational database using MySQL for managing employees and departments.

## Features

- Database creation
- Table relationships using Primary and Foreign Keys
- Insert employee and department records
- Data filtering using WHERE clause
- Data analysis using GROUP BY
- String operations using CONCAT
- Record updates and deletions
- Schema modifications using ALTER TABLE

## Technologies Used

- MySQL
- SQL

## Database Structure

### Departments Table

- DepartmentID (Primary Key)
- DepartmentName
- Location
- HeadOfDepartment
- AnnualBudget

### Employees Table

- EmployeeID (Primary Key)
- FirstName
- LastName
- DepartmentID (Foreign Key)
- Salary
- DateOfJoining
- Email

## How to Run the Project

### 1. Clone the repository

git clone https://github.com/your-username/employee-department-management-system-mysql.git

### 2. Open MySQL Workbench

### 3. Run the SQL files in order:

01_DeptEmp.sql

02_insert_scenarios.sql

03_where_queries.sql

04_groupby_queries.sql

### 4. Execute the remaining query files to test operations.

## Project Screenshots

### Databse Created
![Database](Screenshots/createdDatabase)

### Tables Created
![Tables](Screenshots/createdTables)

### Departments Table
![Departments Table](Screenshots/Departments_Table)

### Employees Table
![Employees Table](Screenshots/Employees_Table)

## Author

Tanmay Tawade
