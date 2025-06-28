create database PROJECT;
USE PROJECT;
SELECT Region,ROUND(SUM(Sales), 2) AS Total_Sales,ROUND(SUM(Profit), 2) AS Total_Profit FROM superstore GROUP BY Region ORDER BY Total_Sales DESC;
SELECT 'Product Name',SUM(Quantity) AS Total_Quantity_Sold,ROUND(SUM(Sales), 2) AS Total_Sales FROM superstore GROUP BY 'Product Name' ORDER BY Total_Quantity_Sold DESC LIMIT 10;
SELECT DATE_FORMAT('Order Date', '%Y-%m') AS Month, ROUND(SUM(Sales), 2) AS Monthly_Sales FROM superstore GROUP BY Month ORDER BY Month;
SELECT Category,ROUND(SUM(Sales), 2) AS Total_Sales,ROUND(SUM(Profit), 2) AS Total_Profit,ROUND(SUM(Profit)/SUM(Sales) * 100, 2) AS Profit_Margin_Percent FROM superstore GROUP BY Category;
SELECT `Customer Name`,ROUND(SUM(Sales), 2) AS Total_Spent FROM superstore GROUP BY `Customer Name` ORDER BY Total_Spent DESC LIMIT 10;
SELECT `Ship Mode`,COUNT(*) AS Total_Orders,ROUND(SUM(Sales), 2) AS Total_Sales FROM superstore GROUP BY `Ship Mode`;
SELECT Discount,ROUND(AVG(Profit), 2) AS Avg_Profit FROM superstore GROUP BY Discount ORDER BY Discount;

