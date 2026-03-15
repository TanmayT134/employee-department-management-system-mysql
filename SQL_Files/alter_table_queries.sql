USE companyDB;

-- Situation -1: Due to a change in company policy, we need to rename the Employee table to Staff.
-- Please perform the necessary operation to rename the table.
-- Note: Please do retrieve the changes made for consistency of the data. If you are changing the
-- name of the table, make sure to restore it to the original state as Employee if needed.
SHOW TABLES; 
RENAME TABLE Employees TO Staff; 
SHOW TABLES; 
RENAME TABLE Staff TO Employees; 
SHOW TABLES;

-- Situation -2: As the company has decided to start tracking employees' marital status, add a new
-- column MaritalStatus of type VARCHAR(20) to the Employee table.
-- Note: Please do retrieve the changes made for consistency of the data and ensure the data
-- remains accurate for all future entries.
DESCRIBE Employees; 
ALTER TABLE Employees ADD MaritalStatus VARCHAR(20); 
DESCRIBE Employees;
ALTER TABLE Employees DROP COLUMN MaritalStatus;

-- Situation -3: The company has decided to store the employees' date of birth. Add a DateOfBirth
-- column of type DATE to the Employee table.
-- Note: Please ensure to retrieve the changes made to check the column's impact on future data
-- consistency.
DESCRIBE Employees; 
ALTER TABLE Employees ADD DateOfBirth DATE; 
DESCRIBE Employees;
ALTER TABLE Employees DROP COLUMN DateOfBirth;

-- Situation -4: We need to change the data type of the Salary column in the Employee table from INT
-- to DECIMAL(10,2) to accommodate fractional salary amounts.
-- Note: Please do retrieve the changes made for consistency of the data, ensuring that all existing
-- salary data is preserved accurately.
DESCRIBE Employees; 
ALTER TABLE Employees MODIFY Salary DECIMAL(10,2); 
DESCRIBE Employees;


-- Situation -5: To better categorize employees, we need to add a new column EmployeeCategory in
-- the Employee table. The column should accept values like "Full-time", "Part-time", or "Contract".
-- Note: Please ensure the changes are reflected and retrieve the updated schema for consistency.
DESCRIBE Employees; 
ALTER TABLE Employees ADD EmployeeCategory VARCHAR(20); 
DESCRIBE Employees;
ALTER TABLE Employees DROP COLUMN EmployeeCategory;

-- Situation -6: The company wants to keep track of the department name for employees.
-- Therefore, a column DepartmentName should be added to the Employee table.
-- Note: After making the change, please retrieve the updates to ensure the column is populated
-- correctly for future entries.
DESCRIBE Employees; 
ALTER TABLE Employees ADD DepartmentName VARCHAR(50); 
DESCRIBE Employees;
ALTER TABLE Employees DROP COLUMN DepartmentName;

-- Situation -7: We need to set the default value of the Status column in the Employee table to
-- "Active" for any new employee added to the database.
-- Note: After applying this change, please retrieve the changes and verify that all new employee
-- records default to "Active".
DESCRIBE Employees; 
ALTER TABLE Employees ADD Status VARCHAR(20) DEFAULT 'Active'; 
DESCRIBE Employees;
ALTER TABLE Employees DROP COLUMN Status;

-- Situation -8: As part of a company-wide restructuring, the DepartmentID column in the Employee
-- table should be renamed to TeamID to reflect the new team-based structure.
-- Note: Please retrieve the changes made for consistency of the data. If necessary, restore the
-- column name back to DepartmentID for future references.
DESCRIBE Employees; 
ALTER TABLE Employees CHANGE DepartmentID TeamID INT; 
DESCRIBE Employees; 
ALTER TABLE Employees CHANGE TeamID DepartmentID INT; 
DESCRIBE Employees;

-- Situation -9: The company has decided to archive old employee data, so the Employee table needs
-- to be partitioned by JoinDate in order to keep the data for employees who joined before 2020
-- separate.
-- Note: After partitioning the data, ensure to retrieve the changes and check the data consistency
-- and accessibility for employees prior to 2020.


-- Situation -10: We need to create a foreign key constraint between the Employee table and the
-- Department table to ensure the integrity of the department data linked to each employee.
-- Note: Please retrieve the changes made to verify the foreign key relationship, ensuring data
-- integrity and consistency across both tables.
SHOW CREATE TABLE Employees; 
ALTER TABLE Employees ADD CONSTRAINT fk_department FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID); 
SHOW CREATE TABLE Employees;