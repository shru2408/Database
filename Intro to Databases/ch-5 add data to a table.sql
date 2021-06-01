/**  Chapter 5   Challenge: Add data to a table
https://www.linkedin.com/learning/database-foundations-intro-to-databases/challenge-add-data-to-a-table?u=60693444
**/

--You've hired three employees: add their data to the table 
INSERT into HumanResources.Employees VALUES
-- (101, 'Jhonny','Anthani','IT','2021-01-25 09:00:00'),
(102,'Ram','Sharma','Accounts','2019-03-10 09:00:00'),
(103,'Ann','Waston','Finance','2020-08-02 09:00:00');

--An employee has been  prompted to a new department: update their record
UPDATE HumanResources.Employees 
SET Department ='Sales' WHERE EmployeeId=103;

--An employee has retired: remove their row
DELETE  FROM HumanResources.Employees
WHERE EmployeeId =102;
