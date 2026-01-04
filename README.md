




##Data Warehouse and Analytics Project

This project demonstrates the end-to-end development of a SQL Server data warehouse, covering data extraction, transformation, loading, and SQL-based analytics. It is built as a portfolio project to showcase practical data engineering and analytical skills.

##Objective

Build a SQL Server data warehouse that consolidates sales data from ERP and CRM systems and prepares it for analytical reporting.

## Data Sources

ERP and CRM datasets

CSV file format

Only the most recent data is used; historical and incremental processing are not included

##ETL Process
##Extraction

Pull-based full extraction, Data sourced from CSV files using file parsing & Each run extracts the complete dataset into a staging area

##Transformation

Raw data is transformed into a consistent, analysis-ready format using SQL.

Data enrichment and integration, Derived columns, Normalization and standardization &  Business rules and aggregations.

##Data cleansing:

Duplicate removal, Filtering, Handling missing and invalid values, Outlier detection, Data type casting,  & Trimming unwanted spaces.

##Load

Batch processing, Full load using truncate and insert, & Dimension tables use SCD Type 1 (overwrite) with no historical tracking

##Analytics
**Customer behavior ** Product performance ** Sales trends and patterns


























