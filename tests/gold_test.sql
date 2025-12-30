/*
===============================================================================
Gold Layer Quality Checks
===============================================================================
Purpose:
    This script checks the Gold layer data to make sure it is correct and
    ready for reporting and analysis.

What is checked:
    - Customer and product keys are unique.
    - Sales records correctly link to customers and products.
    - The data model is connected as expected.

Usage:
    If this script returns any rows, the data needs to be reviewed and fixed.
===============================================================================
*/

-- ====================================================================
-- Checking 'gold.dim_customers'
-- ====================================================================
-- Check that each customer key appears only once
-- Expectation: No results
SELECT
    customer_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_customers
GROUP BY customer_key
HAVING COUNT(*) > 1;

-- ====================================================================
-- Checking 'gold.dim_products'
-- ====================================================================
-- Check that each product key appears only once
-- Expectation: No results
SELECT
    product_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_products
GROUP BY product_key
HAVING COUNT(*) > 1;

-- ====================================================================
-- Checking 'gold.fact_sales'
-- ====================================================================
-- Check that each sales record matches a customer and a product
-- Expectation: No results
SELECT *
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
    ON c.customer_key = f.customer_key
LEFT JOIN gold.dim_products p
    ON p.product_key = f.product_key
WHERE p.product_key IS NULL
   OR c.customer_key IS NULL;
