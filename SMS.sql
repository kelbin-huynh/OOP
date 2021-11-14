USE SMS
GO 
CREATE TABLE Customer
(
	customer_id int identity primary key
	,customer_name nvarchar (100)
)
CREATE TABLE Employee
(
	employee_id int identity primary key
	,employee_name nvarchar (100)
	,salary real 
	,supervisor_id int
)
CREATE TABLE Product 
(
	product_id int identity primary key
	,product_name nvarchar (100)
	,product_price real
)
CREATE TABLE Orders
(
	order_id int identity primary key
	,order_date datetime
	,customer_id int
	,employee_id int
	,total real
	,foreign key (customer_id) references Customer
	,foreign key (employee_id) references Employee
)
CREATE TABLE LineItem
(
	order_id int
	,product_id int
	,quantity int
	,price real
	,foreign key (order_id) references Orders
	,foreign key (product_id) references Product
)