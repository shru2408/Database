/**     Chapter 4     Challenge: Create a table
https://www.linkedin.com/learning/database-foundations-intro-to-databases/challenge-create-a-table?u=60693444
**/


--Create a schema called HumanResources
CREATE SCHEMA HumanResources;

--Add a table for Employees and include columns 
CREATE TABLE HumanResources.Employees (
    EmployeeId INT,
    FirstName  VARCHAR(20),
    LastName VARCHAR(25),
    Department VARCHAR(15),
    HireDate DATETIME
);