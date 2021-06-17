/* Chapter-1 chanllenge:create a view
https://www.linkedin.com/learning/database-foundations-database-management/challenge-create-a-view?u=60693444
*/

--Create two views for the Two Tree Database

--First view 
CREATE VIEW ORDER_number_by_customer AS
SELECT  sales.customers.company,
        sales.customers.customer_id,
        orders.ORDER_id,
        orders.ORDER_date,
        order_lines.quantity,
        products.product_name,       
        products.sku        
    from sales.customers
    JOIN sales.orders on sales.customers.customer_id= orders.customer_id
    join sales.order_lines on orders.order_id=order_lines.order_id
    JOIN inventory.products on products.sku=order_lines.sku;
GO
--Second view
CREATE VIEW quantity_price_order AS
select orders.order_id,
       products.price ,order_lines.quantity,
       products.sku,
       order_lines.line_id
    from inventory.products
    join sales.order_lines on products.sku=order_lines.sku
    join sales.orders on orders.order_id=order_lines.order_id;
GO
-- Aggregate data and display the number of orders placed by each comapny 
select company, COUNT(order_id)As 'Order_Placed' from ORDER_number_by_customer
group by company;

--Multiply the quantity of a product ORDERED by its price for each order line 
SELECT line_id,order_id, (price*quantity) AS total_amount FROM quantity_price_order
    