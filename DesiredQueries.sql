/*Create Sales Table*/

if not exists (select * from sysobjects where name='Sales' and xtype='U')
create table Sales (
	SalesID int,
	OrderID int,
	Customer varchar(255),
	Product varchar(255),
	[Date] int,
	Quantity int,
	UnitPrice int
	);
/*************************************************************************/

/*Create Profit Table*/

if not exists (select * from sysobjects where name='SalesProfit' and xtype='U')
create table SalesProfit (
	Product varchar(255),
	ProfitRatio int
	);
/**************************************************************************/

/*Insert Data From SalesData.CSV File Into Sales Table*/
IF NOT EXISTS (SELECT 1 FROM Sales)
BULK INSERT Sales
FROM 'D:\Exercise\AhanOnline\SalesData.csv'
WITH
(
    FIRSTROW = 2, -- as 1st one is header
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
);
/***************************************************************************/

/*Insert Data From ProfitRatio.CSV File Into Sales Table*/
IF NOT EXISTS (SELECT 1 FROM SalesProfit)
BULK INSERT SalesProfit
FROM 'D:\Exercise\AhanOnline\ProfitRatio.csv'
WITH
(
    FIRSTROW = 2, -- as 1st one is header
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
);
/***************************************************************************/

/*Question #1: Calculating Total Sell*/
select SUM(Quantity * UnitPrice) as TotalPurchase
from Sales;
/**************************************************************************/

/*Question #2: Number Of Distinct Cutomers */
select COUNT(distinct  Customer) as NumbreOfCustomers
from Sales;

/*************************************************************************/

/*Question #3: Number Of Purchase Per Product*/
select Product, sum(Quantity) TotalSoldQuantity
from Sales group by Product

/************************************************************************/

/*Question #4: Show The Customers With Purchase More Than 1500*/
select Customer,sum(Quantity * UnitPrice) as TotalPrice, COUNT(OrderID) as TotalOrders, COUNT(Product) as TotalProducts
from Sales
group by Customer
having  sum(Quantity * UnitPrice) >= 1500

/************************************************************************/
