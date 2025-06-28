# Superstore Sales Analytics Report

 # Dashboard Snapshot


![ss1](https://github.com/user-attachments/assets/60bc13f9-4629-4627-808a-4f009557a14d)



# 1. Introduction

This project demonstrates business analytics using SQL and Power BI on the "Superstore" dataset. The objective is to explore patterns in sales,
 profit, and customer behavior to derive actionable insights.

# 2. Dataset Overview

The dataset contains:
   >>Orders and shipping details (Order Date, Ship Mode)
   >>Customer information (Name, Segment, Region, City)
   >>Product details (Product Name, Category, Sub-Category)
   >>Transaction data (Sales, Quantity, Profit, Discount)

# 3. SQL-Based Data Analysis

The SQL queries extracted key metrics for Power BI visualization:
a) Total Sales and Profit by Region
Insight: The West region contributes the most to total sales and profit.

b) Top 10 Best-Selling Products
Insight: Products with the highest quantity sold are not always the most profitable.

c) Monthly Sales Trend
Insight: Clear seasonality exists; spikes are visible during holiday periods.

d) Category-wise Profitability
Insight: Technology has the highest profit margin; Office Supplies lags.

e) Top Customers by Spending
Insight: A small group of customers contributes significantly to total sales.

f) Shipping Mode Performance
Insight: Standard Class is the most preferred shipping mode by volume.

g) Discount Impact on Profit
Insight: High discounts (50%–80%) result in significant profit reduction.

h) Profit vs Sales per Product
Insight: Sales and profits have a positive correlation, but some products sell well yet bring low or negative profits.

i) Quantity vs Sales per Product
Insight: Quantity sold does not always mean high revenue — some items are low-value bulk sales.

CODE:
SELECT Region,ROUND(SUM(Sales), 2) AS Total_Sales,ROUND(SUM(Profit), 2) AS Total_Profit FROM superstore GROUP BY Region ORDER BY Total_Sales DESC;
SELECT 'Product Name',SUM(Quantity) AS Total_Quantity_Sold,ROUND(SUM(Sales), 2) AS Total_Sales FROM superstore GROUP BY 'Product Name' ORDER BY Total_Quantity_Sold DESC LIMIT 10;
SELECT DATE_FORMAT('Order Date', '%Y-%m') AS Month, ROUND(SUM(Sales), 2) AS Monthly_Sales FROM superstore GROUP BY Month ORDER BY Month;
SELECT Category,ROUND(SUM(Sales), 2) AS Total_Sales,ROUND(SUM(Profit), 2) AS Total_Profit,ROUND(SUM(Profit)/SUM(Sales) * 100, 2) AS Profit_Margin_Percent FROM superstore GROUP BY Category;
SELECT `Customer Name`,ROUND(SUM(Sales), 2) AS Total_Spent FROM superstore GROUP BY `Customer Name` ORDER BY Total_Spent DESC LIMIT 10;
SELECT `Ship Mode`,COUNT(*) AS Total_Orders,ROUND(SUM(Sales), 2) AS Total_Sales FROM superstore GROUP BY `Ship Mode`;
SELECT Discount,ROUND(AVG(Profit), 2) AS Avg_Profit FROM superstore GROUP BY Discount ORDER BY Discount;

# 4. Power BI Dashboard Walkthrough

🔷 Visuals & Interpretation:

Line Chart: Sum of Sales by City and Category→ Top cities: Houston, Chicago, Dallas. Technology leads in high-value sales.
Donut Chart: Sum of Sales by Ship Mode→ Standard Class accounts for the majority of sales volume.
Table: Discount vs Avg Profit, Total Sales, Orders→ Discount above 0.5 leads to negative profit. Moderate discounts perform better.
Bar Chart: Total Profit and Sales by Region→ West and East dominate in both metrics.
Tree Map: Sales by Sub-Category and Category→ Phones and Chairs (Technology and Furniture) top the sales chart.
Bar Chart: Quantity Sold by City→ NYC, LA, and Philadelphia lead in volume sold, highlighting key markets.

# 5. Tools Used

SQL (MySQL) – For data aggregation and transformation, 
Power BI – For interactive and visual analytics, 
Excel – For initial data formatting and import


# 6. Conclusion

This analysis highlights the importance of combining SQL and Power BI for business intelligence. It uncovers hidden patterns in sales performance, customer behavior, and product profitability that can be used to guide strategic decisions.



