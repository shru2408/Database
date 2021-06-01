/**         Chapter-7 Chanllenge: Query Start- Part II
https://www.linkedin.com/learning/database-foundations-intro-to-databases/challenge-query-data?resume=false&u=60693444
**/ 

Select *FROM products.categories
SELECT * FROM products.products

--What are the sizes in  milliters? 
SELECT SKU, Size *29.57353 as [Size in milliters] FROM products.products

--How many different product SKUs are available in each size?
SELECT Size , COUNT(SKU) as [Number of SKUs] from products.products
GROUP by size;



--What is the highest priced product in the cosmestics product line?
SELECT categories.ProductLine , products.Price ,products.SKU
from products.products
JOIN products.categories ON categories.CategoryID = products.CategoryID 
WHERE categories.CategoryId = 3
Order By products.Price DESC;

