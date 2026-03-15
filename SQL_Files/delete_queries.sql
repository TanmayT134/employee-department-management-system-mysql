USE companyDB;

-- Situation -1: Due to an employee leaving the company, we need to delete the record of
-- EmployeeID 101 from the Employee table.

-- Situation -2: The company is undergoing a restructuring. As part of this process, we need to
-- delete all employees in the HR department (DepartmentID: 2) who joined before 2022.
SELECT * FROM Employees WHERE DepartmentID = 2 AND DateOfJoining < '2022-01-01'; 
DELETE FROM Employees WHERE DepartmentID = 2 AND DateOfJoining < '2022-01-01'; 
SELECT * FROM Employees WHERE DepartmentID = 2 AND DateOfJoining < '2022-01-01';

-- Situation -3: We are cleaning up the database and need to delete employees with a salary lower
-- than ₹30,000, as they are no longer part of the workforce.
SELECT * FROM Employees WHERE Salary < 30000; 
DELETE FROM Employees WHERE Salary < 30000; 
SELECT * FROM Employees WHERE Salary < 30000;

-- Situation -4: As per a recent audit, employees who joined before 2020 but no longer have any
-- active projects should be removed from the system. Delete these employee records.

-- Situation -5: After the closure of "Project Beta", we need to delete all records of employees who
-- were working on this project (assumed to be recorded in ProjectName).

-- Situation -6: An employee, EmployeeID 135, was added mistakenly and is no longer part of the
-- organization. Please delete their record from the Employee table.

-- Situation -7: The Marketing department (DepartmentID: 3) has undergone significant layoffs.
-- Delete all records of employees who worked in the Marketing department and joined before 2021.
SELECT * FROM Employees WHERE DepartmentID = 3 AND DateOfJoining < '2021-01-01'; 
DELETE FROM Employees WHERE DepartmentID = 3 AND DateOfJoining < '2021-01-01'; 
SELECT * FROM Employees WHERE DepartmentID = 3 AND DateOfJoining < '2021-01-01';

-- Situation -8: As part of a data privacy initiative, we need to delete records of employees who
-- have not provided their email addresses or contact numbers.

-- Situation -9: We need to remove all employees whose salary is above ₹1,00,000 but were part of
-- a temporary contract that has now expired. Delete these employee records.

-- Situation -10: The company has decided to shut down operations in certain regions. Delete the
-- employee records of those who were hired in the "North" region (assuming a Region column
-- exists), and whose employment ended before 2023.