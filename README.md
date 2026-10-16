# Sales Data Analysis using MySQL and Excel

## Overview
Analyze 240 synthetic retail technology order lines from Jan–Dec 2025. The dataset is practice data, not actual company performance.

## Files
- `data/sales_data.csv`: source dataset
- `sql/sales_analysis_queries.sql`: schema and 12 commented MySQL examples
- `sales_analysis_dashboard.xlsx`: source data, KPI summary, charts, and notes
- `sample_findings.md`: findings calculated from the dataset

## Free tools
MySQL Community Server, MySQL Workbench, LibreOffice Calc, GitHub.

## Setup
1. Install MySQL Community Server and Workbench.
2. Run the database and table setup at the top of the SQL file.
3. Use Workbench's Table Data Import Wizard to import `data/sales_data.csv` into `sales`, mapping each column.
4. Run the SQL examples one at a time and confirm 240 rows.
5. Open the workbook in Excel or LibreOffice Calc. Compare dashboard totals with SQL output.
6. To make it interactive, create PivotTables from the `SalesData` table and add slicers for Region, Category, and Channel.
7. Add a dashboard screenshot to a `screenshots/` folder and publish the project to GitHub.

## Business questions
What are total sales and profit? Which months, regions, categories, products, and channels perform best? Which records are below average?

## SQL concepts
SELECT, WHERE, GROUP BY, ORDER BY, aggregate functions, date functions, subqueries, DENSE_RANK window function, and views.

## Resume bullets — use after you complete and validate
**Sales Data Analysis | MySQL, Excel**
- Analyzed 240 synthetic retail order records using MySQL to evaluate sales, profit, monthly trends, regional performance, and product rankings.
- Wrote SQL queries using aggregations, subqueries, date functions, and window functions to answer business questions and check data quality.
- Built an Excel dashboard with KPI summaries, monthly trend charts, and regional/category comparisons.
- Documented findings and validated Excel totals against SQL results.

Only list techniques you personally ran and can explain in an interview. Label this as a portfolio project using synthetic data.

## Interview walkthrough
Explain the question and dataset; show data-quality checks; demonstrate the monthly trend and product-ranking queries; explain dashboard KPIs; share two findings and one recommendation.
