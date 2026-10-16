create database if not exists sales_analysis;
use sales_analysis;
create table sales(OrderID varchar(12) primary key, OrderDate date not null, Region varchar(20) not null,
Channel varchar(20) not null,Product varchar(100) not null, Category varchar(50) not null, Quantity int not null, 
UnitPrice decimal(12,2) not null, DiscountPct decimal(5,2) not null, Sales decimal (12,2) not null,
Cost decimal (12,2) not null, Profit decimal (12,2)not null );
select * from sales limit 10 ;

USE sales_analysis;

SELECT
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    COUNT(DISTINCT OrderID) AS total_orders,
    SUM(Quantity) AS units_sold,
    ROUND(
        SUM(Profit) / NULLIF(SUM(Sales), 0) * 100,
        2
    ) AS profit_margin_pct
FROM sales;

SELECT
    DATE_FORMAT(OrderDate, '%Y-%m') AS sales_month,
    ROUND(SUM(Sales), 2) AS monthly_sales,
    ROUND(SUM(Profit), 2) AS monthly_profit
FROM sales
GROUP BY DATE_FORMAT(OrderDate, '%Y-%m')
ORDER BY sales_month;

SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    SUM(Quantity) AS units_sold
FROM sales
GROUP BY Category
ORDER BY total_sales DESC;

SELECT
    Region,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM sales
GROUP BY Region
ORDER BY total_profit DESC;


SELECT
    Region,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(
        SUM(Profit) / NULLIF(SUM(Sales), 0) * 100,
        2
    ) AS profit_margin_pct
FROM sales
GROUP BY Region
ORDER BY profit_margin_pct DESC;


SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    SUM(Quantity) AS units_sold,
    ROUND(
        SUM(Profit) / NULLIF(SUM(Sales), 0) * 100,
        2
    ) AS profit_margin_pct
FROM sales
GROUP BY Category
ORDER BY total_profit DESC;


SELECT
    DATE_FORMAT(OrderDate, '%Y-%m') AS sales_month,
    ROUND(SUM(Sales), 2) AS monthly_sales,
    ROUND(SUM(Profit), 2) AS monthly_profit
FROM sales
GROUP BY DATE_FORMAT(OrderDate, '%Y-%m')
ORDER BY sales_month;


SELECT
    COUNT(DISTINCT DATE_FORMAT(OrderDate, '%Y-%m')) AS months_available,
    MIN(OrderDate) AS first_order_date,
    MAX(OrderDate) AS last_order_date
FROM sales;


SELECT
    DATE_FORMAT(OrderDate, '%Y-%m') AS sales_month,
    ROUND(SUM(Sales), 2) AS monthly_sales,
    ROUND(SUM(Profit), 2) AS monthly_profit
FROM sales
GROUP BY DATE_FORMAT(OrderDate, '%Y-%m')
ORDER BY sales_month;


SELECT
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    COUNT(DISTINCT OrderID) AS total_orders,
    SUM(Quantity) AS units_sold,
    ROUND(
        SUM(Profit) / NULLIF(SUM(Sales), 0) * 100,
        2
    ) AS profit_margin_pct
FROM sales;



SELECT
    COUNT(*) AS total_rows,
    SUM(OrderID IS NULL) AS missing_order_ids,
    SUM(OrderDate IS NULL) AS missing_dates,
    SUM(Region IS NULL) AS missing_regions,
    SUM(Product IS NULL) AS missing_products,
    SUM(Category IS NULL) AS missing_categories,
    SUM(Quantity IS NULL) AS missing_quantities,
    SUM(Sales IS NULL) AS missing_sales,
    SUM(Profit IS NULL) AS missing_profit
FROM sales;


SELECT *
FROM sales
WHERE Quantity <= 0
   OR UnitPrice < 0
   OR Sales < 0
   OR Cost < 0
   OR Profit < 0
   OR DiscountPct < 0
   OR DiscountPct > 100;


SELECT COUNT(*) AS flagged_rows
FROM sales
WHERE Quantity <= 0
   OR UnitPrice < 0
   OR Sales < 0
   OR Cost < 0
   OR Profit < 0
   OR DiscountPct < 0
   OR DiscountPct > 100;



SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT OrderID) AS unique_orders
FROM sales;







