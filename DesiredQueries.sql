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