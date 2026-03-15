USE companyDB;
SET SQL_SAFE_UPDATES = 0;


-- Situation -1: As part of an organizational review, we need to update the salary of all employees
-- who are part of the IT department (DepartmentID: 3). The salary of all employees in this
-- department should be increased by 10%. Make sure that the increase is applied to every
-- employee within the department.
SELECT * FROM Employees WHERE DepartmentID = 3;
UPDATE Employees SET Salary = Salary * 1.10 WHERE DepartmentID = 3;
SELECT * FROM Employees WHERE DepartmentID = 3;

-- Situation -2: After the recent promotion evaluation, it has been decided that the employee with
-- EmployeeID 101 should be promoted to a "Senior Developer" role. Update their job title
-- accordingly and make sure the position is reflected correctly in the employee records.
SELECT * FROM Employees WHERE EmployeeID = 101; 
UPDATE Employees SET JobTitle = 'Senior Developer' WHERE EmployeeID = 101; 
SELECT * FROM Employees WHERE EmployeeID = 101;

-- Situation -3: The HR team has informed us of a change in the contact information of employee
-- with EmployeeID 120. The new contact number for this employee should be updated to
-- "9876543210". Ensure that the correct phone number is reflected in the system for any future
-- communications.
SELECT * FROM Employees WHERE EmployeeID = 120;
UPDATE Employees SET PhoneNumber = '9876543210' WHERE EmployeeID = 120; 
SELECT * FROM Employees WHERE EmployeeID = 120;

-- Situation -4: The company has recently implemented a new email domain. All employees who
-- joined after January 1, 2023, need their email addresses updated to reflect the new domain
-- "@newcompany.com". Update the email addresses accordingly for all the affected employees.
SELECT * FROM Employees WHERE DateOfJoining > '2023-01-01'; 
UPDATE Employees SET Email = REPLACE(Email,'@example.com','@newcompany.com') WHERE DateOfJoining > '2023-01-01'; 
SELECT * FROM Employees WHERE DateOfJoining > '2023-01-01';

-- Situation -5: It has come to our attention that there was an error in the naming of the HR
-- department. The department name for DepartmentID 5 needs to be updated from "HR" to
-- "Human Resources" to reflect the company's official title. Perform this update to ensure
-- consistency across the records.
SELECT * FROM Departments WHERE DepartmentID = 5; 
UPDATE Departments SET DepartmentName = 'Human Resources' WHERE DepartmentID = 5; 
SELECT * FROM Departments WHERE DepartmentID = 5;

-- Situation -6: As part of a company-wide salary review process, all employees who are currently
-- earning below ₹50,000 need to receive a salary increase of ₹5,000. This update should only
-- affect employees with a salary below the threshold and should apply the increase uniformly to
-- each of their records.
SELECT * FROM Employees WHERE Salary < 50000; 
UPDATE Employees SET Salary = Salary + 5000 WHERE Salary < 50000; 
SELECT * FROM Employees WHERE Salary < 50000;

-- Situation -7: The Marketing department has recently moved to a new office in a different city.
-- The location of the Marketing department (DepartmentID: 11) needs to be updated to reflect this
-- change. Please update the location to "Mumbai" in the department's records accordingly.
SELECT * FROM Departments WHERE DepartmentID = 11; 
UPDATE Departments SET Location = 'Mumbai' WHERE DepartmentID = 11; 
SELECT * FROM Departments WHERE DepartmentID = 11;

-- Situation -8: Update the Salary of EmployeeID 135 to ₹60,000 as part of their annual appraisal.
SELECT * FROM Employees WHERE EmployeeID = 135; 
UPDATE Employees SET Salary = 60000 WHERE EmployeeID = 135; 
SELECT * FROM Employees WHERE EmployeeID = 135;

-- Situation -9: EmployeeID 110, who was previously working on a different project, has now
-- been assigned to "Project Alpha" after the successful completion of their prior assignment.
-- Please update the project assignment for this employee to reflect this new responsibility.
SELECT * FROM Employees WHERE EmployeeID = 110; 
UPDATE Employees SET ProjectName = 'Project Alpha' WHERE EmployeeID = 110; 
SELECT * FROM Employees WHERE EmployeeID = 110;

-- Situation -10: The employee with EmployeeID 103 had a delayed start date due to personal
-- reasons. We need to update their joining date to the correct date, which is 2024-03-15, to ensure
-- the records accurately reflect the employee's actual start date with the company.
SELECT * FROM Employees WHERE EmployeeID = 103; 
UPDATE Employees SET DateOfJoining = '2024-03-15' WHERE EmployeeID = 103; 
SELECT * FROM Employees WHERE EmployeeID = 103;