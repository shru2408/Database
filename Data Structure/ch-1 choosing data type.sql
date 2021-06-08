/**      Chapter-1  Challenge choosing data types
https://www.linkedin.com/learning/database-foundations-data-structures/challenge-choosing-data-types?u=60693444
**/

--create a two trees's employee data 
--INCLUDE columns for -> First and last name, phone number,office number, hire date, annual salary
--choose appropiate data types for each column

CREATE TABLE Twotrees_employee(
    FirstName varchar(20),
    LastName varchar(20),
    [PhoneNumber(with country code)] VARCHAR(15), 
    OfficeCode int,
    HireDate DATETIME,
    Annual_salary money
     );

--Once table is created, insert a row for first employee
INSERT into Twotrees_employee VALUES
    ('Leo','Waston','+1 9876543210',100,'2021-01-01 09:00:00',90000);

--verify that each column supports the intended data
SELECT * from Twotrees_employee;
