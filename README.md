# Task-3-Write-basic-SELECT-queries

## Objective
Extract data from one or more tables using SELECT queries in PostgreSQL.

## Tools Used
- pgAdmin 4 (PostgreSQL)

## What This Task Covers
- Creating two tables: `customers` and `orders`
- Inserting sample data into both tables
- Writing basic SELECT queries using:
  - `SELECT *`, specific columns
  - `WHERE`, `AND`, `OR`
  - `LIKE`, `BETWEEN`
  - `ORDER BY`, `LIMIT`

## Sample Tables Created
- **customers**
  - Columns: customer_id, first_name, last_name, city, email
- **orders**
  - Columns: order_id, customer_id, order_date, total_amount

## Example Queries
- `SELECT * FROM customers;`
- `SELECT first_name, last_name FROM customers;`
- `SELECT * FROM orders WHERE total_amount > 200;`
- `SELECT * FROM orders ORDER BY total_amount DESC LIMIT 2;`

## Outcome
A clear understanding of how to retrieve and filter data using basic SQL SELECT queries in PostgreSQL.
