/*          Chapter-3  Challenge Add a primary key to a table
https://www.linkedin.com/learning/database-foundations-data-structures/challenge-add-a-primary-key-to-a-table?u=60693444
*/ 

-- Add a primary key to the employees table created in the last challenge 
--Make use of the IDENTITY feature to have RDBMS  create a new number
ALTER TABLE Twotrees_employee add Employee_id int IDENTITY (100,1) PRIMARY KEY 

SELECT * from Twotrees_employee;

--for check above query work or not
INSERT into Twotrees_employee 
(FirstName,LastName,[PhoneNumber(with country code)],OfficeCode,HireDate,Annual_salary) VALUES
('Adam','Wilbert','+1 1234567890','200','2020-12-12 09:00:00',50000),
('Liza','Honey','+91-5678901234','300','2012-10-25 09:00:00',100000);

SELECT* FROM Twotrees_employee;
--Hurry! Its working 