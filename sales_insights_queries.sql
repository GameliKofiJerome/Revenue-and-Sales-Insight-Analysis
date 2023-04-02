-- Selecting all transactions 
SELECT 
    *
FROM
    sales.transactions;

-- All transactions that were made in the chennai market which has a market code of 'Mark001'
SELECT 
    *
FROM
    sales.transactions
WHERE
    market_code = 'Mark001';

-- How many transactions were done in the chennai market
SELECT 
    COUNT(*)
FROM
    sales.transactions
WHERE
    market_code = 'Mark001';

-- How many transactions were in the USD (dollar) currency
SELECT 
    *
FROM
    sales.transactions
WHERE
    currency = 'USD';

-- Joining the transactions table to the date table to perform some analysis
SELECT 
    sales.transactions.*, sales.date.*
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date;

-- How many transactions that were made in the year 2020
SELECT 
    sales.transactions.*, sales.date.*
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = '2020';

-- What is the total sales revenue for the year 2019
SELECT 
    SUM(sales.transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = '2019';

-- What is the total revenue made in Chennai in the year 2020
SELECT 
    SUM(sales.transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = '2020'
        AND sales.transactions.market_code = 'Mark001';

-- What were the distinct products sold in Mumbai
SELECT DISTINCT
    product_code
FROM
    sales.transactions
WHERE
    market_code = 'Mark002';

-- Selecting all negative tansactions amounts
SELECT 
    *
FROM
    sales.transactions
WHERE
    sales_amount <= 0;

-- Selecting any duplicate values in our data, using the currency column
SELECT DISTINCT
    currency
FROM
    sales.transactions;

'INR'
'INR\r'
'USD'
'USD\r'

SELECT 
    *
FROM
    transactions
WHERE
    transactions.currency = 'USD'
        OR transactions.currency = 'USD\r';
        
-- Show total revenue in year 2020
SELECT 
    SUM(transactions.sales_amount)
FROM
    transactions
        INNER JOIN
    date ON transactions.order_date = date.date
WHERE
    date.year = 2020
        AND transactions.currency = 'INR'
        OR transactions.currency = 'USD';
        
-- Show total revenue in year 2020 for the month of January
SELECT 
    SUM(transactions.sales_amount)
FROM
    transactions
        INNER JOIN
    date ON transactions.order_date = date.date
WHERE
    date.year = 2020
        AND date.month_name = 'January'
        AND (transactions.currency = 'INR'
        OR transactions.currency = 'USD'
        );