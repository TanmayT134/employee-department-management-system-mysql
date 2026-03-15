USE companyDB;
-- Employee Table 
-- Situation -1 We are planning a cybersecurity project. Find all employees working in the IT 
-- department (DepartmentID: 3). 
SELECT * FROM Employees WHERE DepartmentID = 3;

-- Situation -2 To organize a corporate event, we need employees who joined after 2024-01-01. 
-- Retrieve their details. 
SELECT * FROM Employees WHERE DateOfJoining > '2024-01-01';

-- Situation -3 The finance team is preparing budgets. List all employees whose salary is greater 
-- than ₹60,000. 
SELECT * FROM Employees WHERE Salary > 60000;

-- Situation -4 We are sending a company-wide newsletter. Find the details of employees whose 
-- email ends with '@example.com'. 
SELECT * FROM Employees WHERE Email LIKE '%@example.com';

-- Situation -5 The Marketing department is launching a new campaign and needs a cost-effective 
-- team. Retrieve the details of employees in the Marketing department (DepartmentID: 11) who 
-- earn less than ₹60,000. 
SELECT * FROM Employees WHERE DepartmentID = 11 AND Salary < 60000;

-- Situation -6 A client requires a project lead for their team. Find the employee details where the 
-- name starts with 'S'. 
SELECT * FROM Employees WHERE FirstName LIKE 'S%';

-- Situation -7 For recruitment analysis, retrieve all employees who joined in February 2024. 
SELECT * FROM Employees WHERE MONTH(DateOfJoining)=2 AND YEAR(DateOfJoining)=2024;

-- Situation -8 To shortlist mid-level employees, find the details of employees who are earning 
-- between ₹50,000 and ₹70,000. 
SELECT * FROM Employees WHERE Salary BETWEEN 50000 AND 70000;

-- Situation -9 We need to identify senior employees. Retrieve the details of employees who joined 
-- before 2024-03-01 and earn more than ₹55,000. 
SELECT * FROM Employees WHERE DateOfJoining < '2024-03-01' AND Salary > 55000;

-- Situation -10 A special campaign is being planned for team leaders. Find employees who have 
-- "Manager" in their name. 
SELECT * FROM Employees WHERE FirstName LIKE '%Manager%';




-- Department Table 
-- Situation -11 To identify local opportunities, list all the departments located in Pune. 
SELECT * FROM Departments WHERE Location='Pune';

-- Situation -12 The board is interested in high-budget projects. Find the details of departments 
-- where the budget exceeds ₹10,00,000.
SELECT * FROM Departments WHERE AnnualBudget > 1000000;

-- Situation -13 For a leadership meeting, retrieve the departments headed by "Rakesh Mehta". 
SELECT * FROM Departments WHERE HeadOfDepartment='Rakesh Mehta';

-- Situation -14 Marketing expansion is being planned. Find all departments whose names start 
-- with "M". 
SELECT * FROM Departments WHERE DepartmentName LIKE 'M%';

-- Situation -15 To allocate funds efficiently, list all departments where the budget is between 
-- ₹8,00,000 and ₹15,00,000.
SELECT * FROM Departments WHERE AnnualBudget BETWEEN 800000 AND 1500000;