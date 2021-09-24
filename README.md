# AhanOnlineExercise
This is just an exercise to evaluate my search ability and SQL skill
## Given Data
Two Tables:
* Table 1: Sales (Columns: SalesID, OrderID, Customer, Product, Date, Quantity, UnitPrice)
* Table 2: SalesProfit (Columns: Product, ProfitRatio)
* 25 rows of data for Sales table
* 5 rows of data for SalesProfit table
## Assumptions
* I have used MSSQL Server.
* Date in Sales table points to the date of a month, so it could be stored as int (no need to store Date type).
* All prices are assumed to be integer.
* The ProfitRatio is stored as integer.
* The ProfitRatio is considerd 10% for those products which do not exist in SalesProfit table.
## Preparation
* Copy given data to two seprate .csv files.
* Create two tables using given information and SQL queries.
* Insert the data from each .csv file into the corresponding tables using SQL queris.
* Check if the each table is already existed or not.
* Check if each table is empty or not.
## Solve Question Number 1
* To find the total sell of the company:
* I assumed that this question is about the company's income.
* To find the income of the company, we should calculate the sum of all sold products prices. So, in Sales table for each row we should calculate "the multiplication of the Quantity of each products and its UnitPrice". Then, we should calculate the SUM of that multiplication for all rows.
## Solve Question Number 2
* To find the total number of distinct customers:
* I think there is no need to further explanation for this question. ;)
## Solve Question Number 3
* To find the total number of quantities for each product:
* To answer this question, we should calculate the SUM of quantities for each product and show them in a table. By visiting the suggested query, you can findout more datails.
## Solve Question Number 4
* To find the list of those customers who have at least one invoice with more than 1500 cost and show the total cost, total number of invoices and total number of purchased products.
* I assumed that the OrderID in Sales table points to the invoices.
* To answer this question we should calculate the amount of money each customer has spent. It means that we should calculate the SUM of multiplication of each product's Quantity and its UnitPrice for all orders of each customer.
* Then, we should check if the result of the previous step is equal or more than 1500 or not.
## Solve Question Number 5
* To find the total profit and the profit percentage of total income:
* To calculate the total profit of the company, we sholud calculate the multiplication of ProfitRatio from SalesProfit table and SUM of multiplication of Quantity and UnitPrice  for each item. In other words, we should first calculate the total amount of income from each product and then calculate the profit of each product. The total profit would be the sum of all products profits.
* Please notice that we stored ProfitRatio as integer. So, now we should devide the total profit calculated in the previous step by 100.
* Remember the assumptions. The ProfitRatio is considerd 10% for those products which do not exist in SalesProfit table.
* To calculate the profit percentage, we should join the SalesProfit table with a table containing Product list and their correponding total income.
* We should check if any product has been dimissed in SalesProfit table and considering assumptions consider 10% profit for them.
* The total profit percentage would be calculating by division of total profit and total income multiplied by 100.
* Keep in mind that we stored UnitPrice as integer. So, as the total profit supposed to be less than the total income, the division mentioned above would return 0.
* To Solve this Problem, we should CAST total profit and total income into float.
