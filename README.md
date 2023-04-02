## Sales Insights Data Analysis Project

1. SQL database is in sales_insight.sql file. Download `sales_insight.sql` file to your local computer and import it into your database using the data import function

### Data Analysis Using SQL

1. All sql queries used for the analysis of the data can be found in the `sales_insight_queries.sql`

2. Save the file to a preferred location your local computer.

2. MySQL workbench which was used for this analysis.

3. Use the 'Open a SQL script file in a new query tab' icon below the 'Edit' tap

4. Navigate to location of the saved `sales_insight_queries.sql` and select file to open in a new query tab

5. Run the queries under each comment to generate the output results.


### Data Analysis Using Power BI

1. Data used for analysis and the report dashboard are in the `Product_Sales_Insight.pbix` file.

2. Download file to local computer and open with Power BI application to view data and report dashboard.

3. Below is DAX formula to create new_sales_amount column

`= Table.AddColumn(#"Filtered Rows", "norm_amount", each if [currency] = "USD" or [currency] ="USD#(cr)" then [new_sales_amount]*75 else [new_sales_amount], type any)`
