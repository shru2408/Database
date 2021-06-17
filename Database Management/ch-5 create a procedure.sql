/*          Chapter-5 Challenge: Create a Stored Procedure
https://www.linkedin.com/learning/database-foundations-database-management/challenge-write-a-stored-procedure?u=60693444
*/

--First selct the table in which want to create procedure
SELECT * FROM [sales].[customers];
GO
--Create a stored procedure for entering new customers for two trees
CREATE PROCEDURE customer 
--Multiple parameters can be separated by commas 
    ( @customer_id CHAR(5),
      @company VARCHAR(100),
      @address VARCHAR(100),
      @city VARCHAR(5),
      @state CHAR(2),
      @zip CHAR(5)
    ) As 
INSERT into sales.customers values (@customer_id, @company,@address, @city, @state, @zip);

--Pass parameters into the stored procedure in the same sequence
EXECUTE customer 'AB123','Apple Rose','200 Lake of flower','Manali','IN','95201'

SELECT * FROM [sales].[customers];
