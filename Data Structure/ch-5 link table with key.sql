/*      Chapter 5 Challenge  Link table with keys
https://www.linkedin.com/learning/database-foundations-data-structures/challenge-link-tables-with-keys?u=60693444
*/

--Create a new table to hold quarterly information about employee bonuses
CREATE table Bonus(
    BonusId int IDENTITY(1000,1),
    BonusAmount DECIMAL(10,2),
    Quarter char(7),
    EmployeeID int
);

--Add a foreign key constraint to ensure that every row in the table points to a single employee
ALTER TABLE Bonus
add CONSTRAINT fk_Twotree_employeeid FOREIGN KEY (EmployeeID)
REFERENCES Twotrees_employee(Employee_id)
on UPDATE CASCADE
ON Delete CASCADE;

--Test out the foregin key constraint by adding rows to the new table 
INSERT   into Bonus (BonusAmount , Quarter,EmployeeID)VALUES
    (5000.00,'2021-Q1',100);

SELECT * from Bonus;
SELECT*from Twotrees_employee;





