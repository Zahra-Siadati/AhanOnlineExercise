# AhanOnlineExercise
This is just an exercise to evaluate my search ability and SQL skill
## Given Data
Two Tables:
* Table 1: Sales (Columns: SalesID, OrderID, Customer, Product, Date, Quantity, UnitPrice)
* Table 2: SalesProfit (Columns: Product, ProfitRatio)
* 25 rows of data for Sales table
* 5 rows of data for SalesProfit table
## Assumptions
* Date in Sales table points to the date of a month, so it could be stored as int (no need to store Date type).
* All prices are assumed to be integer.
* The ProfitRatio is stored as integer.
* The ProfitRatio is considerd 10% for those products which do not exist in SalesProfit table.
## Preparation
* Copy given data to two seprate .csv files.
* Create two tables using given information and SQL queris.
* Insert the data from each .csv file into the corresponding tables using SQL queris.
* Check if the each table is already existed or not.
* Check if each table is empty or not.
## Solve Question Number 1:
* To find the total sell of the company:
* I assumed that this question is about the company's income.
* To find the income of the company, we should calculate the sum of all sold products prices. So, in Sales table for each row we should calculate "the multiplication of the Quantity of each products and its UnitPrice". Then, we should calculate the SUM of that multiplication for all rows.
## Solve Question Number 2:
* To find the total number of distinct customers:
* I think there is no need to further explanation for this question. ;)
## Solve Question Number 3:
* To find the total number of quantities for each product:
* To answer this question, we should calcualte the SUM of quantities for each product and show them in a table. By visiting the suggested query, you can findout more datails.