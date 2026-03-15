USE companyDB;
-- Situation -1: To create a full name column, concatenate the first name and last name of each employee.
SELECT CONCAT(FirstName,' ',LastName) AS FullName FROM Employees;

-- Situation -2: For a project report, concatenate the department name and its location to display a complete department address.
SELECT CONCAT(DepartmentName,' - ',Location) AS DepartmentAddress FROM Departments;

-- Situation -3: To prepare a personalized email greeting, concatenate "Hello " with the employee's name and a comma.
SELECT CONCAT('Hello ',FirstName,' ',LastName,',') AS Greeting FROM Employees;

-- Situation -4: For creating a unique employee ID, concatenate the department ID and employee number.
SELECT CONCAT(DepartmentID,'-',EmployeeID) AS UniqueEmployeeID FROM Employees;

-- Situation -5: For creating a company contact list, concatenate the employee's phone number with their extension (if applicable).


-- Situation -6: To display the complete address, concatenate the street, city, and postal code of each employee.


-- Situation -7: To create an employee login ID, concatenate the employee’s first name, last name, and their department ID.
SELECT CONCAT(FirstName,LastName,DepartmentID) AS LoginID FROM Employees;

-- Situation -8: For sending out a personalized notification, concatenate the employee's department with their position.


-- Situation -9: To display the employee's work status, concatenate their job title and current project.


-- Situation -10: For an annual report, concatenate the year and employee’s first name to create a unique report reference code.
SELECT CONCAT(YEAR(CURDATE()),'-',FirstName) AS ReportCode FROM Employees;