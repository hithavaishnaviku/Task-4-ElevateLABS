
-- Task 4: SQL for Data Analysis
-- Dataset: Ecommerce Shipping Data

-- 1. Basic SELECT with WHERE
SELECT ID, Mode_of_Shipment, Cost_of_the_Product, Discount_offered
FROM ecommerce_shipping
WHERE Cost_of_the_Product > 200;

-- 2. ORDER BY
SELECT ID, Warehouse_block, Cost_of_the_Product
FROM ecommerce_shipping
ORDER BY Cost_of_the_Product DESC;

-- 3. GROUP BY with aggregate
SELECT Mode_of_Shipment, COUNT(*) AS Total_Shipments, AVG(Cost_of_the_Product) AS Avg_Cost
FROM ecommerce_shipping
GROUP BY Mode_of_Shipment;

-- 4. Aggregates by warehouse
SELECT Warehouse_block, SUM(Discount_offered) AS Total_Discount, AVG(Customer_rating) AS Avg_Rating
FROM ecommerce_shipping
GROUP BY Warehouse_block;

-- 5. Subquery: Find products with cost higher than average
SELECT ID, Cost_of_the_Product
FROM ecommerce_shipping
WHERE Cost_of_the_Product > (SELECT AVG(Cost_of_the_Product) FROM ecommerce_shipping);

-- 6. Join Example (simulate by creating another table for Warehouse info)
-- Assume another table warehouse_info(Warehouse_block CHAR, Location VARCHAR)
SELECT e.ID, e.Warehouse_block, w.Location, e.Mode_of_Shipment
FROM ecommerce_shipping e
INNER JOIN warehouse_info w
ON e.Warehouse_block = w.Warehouse_block;

-- 7. LEFT JOIN: Include all shipments even if warehouse info is missing
SELECT e.ID, e.Warehouse_block, w.Location, e.Mode_of_Shipment
FROM ecommerce_shipping e
LEFT JOIN warehouse_info w
ON e.Warehouse_block = w.Warehouse_block;

-- 8. Aggregate with HAVING
SELECT Product_importance, COUNT(*) AS Total_Orders
FROM ecommerce_shipping
GROUP BY Product_importance
HAVING COUNT(*) > 1000;

-- 9. Create a view for on-time vs delayed shipments
CREATE VIEW shipment_status AS
SELECT Reached_onTime_YN, COUNT(*) AS Total
FROM ecommerce_shipping
GROUP BY Reached_onTime_YN;

-- 10. Query from the created view
SELECT * FROM shipment_status;

-- 11. Index creation (for optimization)
CREATE INDEX idx_mode_shipment ON ecommerce_shipping(Mode_of_Shipment);
CREATE INDEX idx_warehouse_block ON ecommerce_shipping(Warehouse_block);
