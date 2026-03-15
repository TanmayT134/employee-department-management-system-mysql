USE companyDB;
-- Employee Table
-- Situation -1: To analyze salary distribution, find the total salary paid in each department.
SELECT DepartmentID, SUM(Salary) FROM Employees GROUP BY DepartmentID;

-- Situation -2: For employee retention analysis, count the number of employees in each department.
SELECT DepartmentID, COUNT(*) FROM Employees GROUP BY DepartmentID;

-- Situation -3: The finance team wants to understand salary variation. Find the average salary in each department.
SELECT DepartmentID, AVG(Salary) FROM Employees GROUP BY DepartmentID;

-- Situation -4: To reward experienced employees, identify the earliest joining date in each department.
SELECT DepartmentID, MIN(DateOfJoining) FROM Employees GROUP BY DepartmentID;

-- Situation -5: The HR team is preparing performance reports. Retrieve the maximum salary in each department.
SELECT DepartmentID, MAX(Salary) FROM Employees GROUP BY DepartmentID;

-- Situation -6: To analyze junior-level hiring, find the minimum salary in each department.
SELECT DepartmentID, MIN(Salary) FROM Employees GROUP BY DepartmentID;

-- Situation -7: The finance team wants to review high-salary employees. Find the total salary paid for employees earning more than ₹60,000 in each department.
SELECT DepartmentID, SUM(Salary) FROM Employees WHERE Salary > 60000 GROUP BY DepartmentID;

-- Situation -8: To monitor departmental growth, count the number of employees who joined in 2024 in each department.
SELECT DepartmentID, COUNT(*) FROM Employees WHERE YEAR(DateOfJoining)=2024 GROUP BY DepartmentID;

-- Situation -9: For training allocation, count the number of employees with salaries between ₹50,000 and ₹70,000 in each department.
SELECT DepartmentID, COUNT(*) FROM Employees WHERE Salary BETWEEN 50000 AND 70000 GROUP BY DepartmentID;

-- Situation -10: For diversity analysis, count the number of employees whose names start with each letter of the alphabet.
SELECT SUBSTRING(FirstName,1,1) AS FirstLetter, COUNT(*) AS EmployeeCount FROM Employees GROUP BY SUBSTRING(FirstName,1,1);


-- Department Table
-- Situation -11: For city-based analysis, count the number of departments located in each city.
SELECT Location, COUNT(*) AS NumberOfDepartments FROM Departments GROUP BY Location;

-- Situation -12: To manage high-budget projects, find the total budget allocated to all departments in each city.
SELECT Location, SUM(AnnualBudget) AS TotalBudget FROM Departments GROUP BY Location;

-- Situation -13: For leadership tracking, count the number of departments headed by each manager.
SELECT HeadOfDepartment, COUNT(*) AS DepartmentCount FROM Departments GROUP BY HeadOfDepartment;

-- Situation -14: To plan budget allocation, calculate the average budget of departments in each city.
SELECT Location, AVG(AnnualBudget) AS AverageBudget FROM Departments GROUP BY Location;

-- Situation -15: For funding efficiency, find the maximum and minimum budgets among departments in each city.
SELECT Location, MAX(AnnualBudget) AS MaximumBudget, MIN(AnnualBudget) AS MinimumBudget FROM Departments GROUP BY Location;