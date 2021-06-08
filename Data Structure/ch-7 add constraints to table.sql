/*          Chapter-7 Chanllege Add constraints to a table
https://www.linkedin.com/learning/database-foundations-data-structures/challenge-add-constraints-to-a-table?u=60693444
*/

-- Finalize your employee table with some constraint
SELECT*from Employees;

--First and last name columns cannot allow null values
ALTER table Twotrees_employee  
ALTER COLUMN FirstName  VARCHAR(50) not null

ALTER table Twotrees_employee  
Alter Column LastName VARCHAR(30) not null

--Add a default phone number for the main office
ALTER table Twotrees_employee  
ADD CONSTRAINT ph_num DEFAULT '0141-123456' for [PhoneNumber(with country code)] ;

--Salaries must be above 30000
ALTER table Twotrees_employee  
ADD CONSTRAINT check_salary CHECK(Annual_salary>30000.00);

--Test your solution by entering a new row for employee
INSERT into Twotrees_employee (Employee_id,FirstName,Annual_salary)
VALUES (1002 ,'amit',19999.00);
/*Error
Cannot insert the value NULL into column 'LASTName', table 'Challenge.dbo.Employees'; column does not allow nulls. INSERT fails.*/

INSERT into Twotrees_employee (Employee_id,FirstName,LASTName,Annual_salary)
VALUES (1002 ,'amit','agr',19999.00);
/*Error
The INSERT statement conflicted with the CHECK constraint "check_salary". The conflict occurred in database "Challenge", table "dbo.Employees", column 'Salary'.*/

INSERT into Twotrees_employee (Employee_id,FirstName,LASTName,Annual_salary)
VALUES (1002 ,'amit','agr',60000.00);
--(1 row affected)


--For delete default constraint
DECLARE @ConstraintName nvarchar(200)
SELECT @ConstraintName = Name FROM SYS.DEFAULT_CONSTRAINTS WHERE PARENT_OBJECT_ID = OBJECT_ID('Employees') 
AND PARENT_COLUMN_ID = (SELECT column_id FROM sys.columns WHERE NAME = N'PhoneNumber' AND object_id = OBJECT_ID(N'Employees'))
IF @ConstraintName IS NOT NULL
EXEC('ALTER TABLE Employees DROP CONSTRAINT ' + @ConstraintName)
IF EXISTS (SELECT * FROM syscolumns WHERE id=object_id('Employees') AND name='PhoneNumber')
EXEC('ALTER TABLE Employees DROP COLUMN PhoneNumber')



