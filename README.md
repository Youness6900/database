# 
## Course
CMPE343 – Database Management Systems and Programming I
## Student
-    22202963 Tinotenda Mupati
-    22217265 Lorraine Masvata
-    22218191 Jesse Mundi Dafur
-    22311141 Mohamed Amine Hillali
## Description
This DBMS project implements a restaurant management system designed to manage customers, employees, orders made by the customers and their order details, menu showing the items the restaurant offers, and the payments made by the customers. As for the employees, its main focus is on waiters who handles customer orders. 
The subtotal from OrderDetails and the total amount from Orders are derived from quantity(OrderDetails) * price(MenuItem) but they are stored for performance reasons
- Customers to Orders: One to Many (A Customer can place many Orders)
- Employees to Orders: One to Many (An Employee(waiter) can have many Orders)
- Orders to OrderDetails: One to Many (Each order contains multiple order items)
- MenuItems to OrderDetails: One to Many (A menu item can appear in many order entries) 
- Orders to Payment: One to One (Each order has only one payment, "Assuming each order is paid in a single transaction")  
- The Employees are generalized into Cashier, Waiter and Chef and an employee can have only one role.

## Technologies
-    Supabase
-    SQL
## Project Contents
-    ER Diagram
-    DDL (8 Tables and their constraints)
-    DML (Insert, Update, Alter, Delete operations)
-    16 SQL Queries for data analysis and management
## Database Features
- Employee specialization (Waiter, Chef, Cashier)
- Order and payment tracking
- Sales analysis and commission calculation
- Customer and menu management
## Database Tables and Attributes
-    Customers: CustomerID (PK), Name, Phone, Email, Address(Altered into the table)
-    Employees: EmployeeID (PK), Name, Role, Salary
-    Waiter: EmployeeID (PK, FK), Shift, TableServed
-    Chef: EmployeeID (PK, FK), Speciality, Experience
-    Cashier: EmployeeID (PK, FK), RegisterNumber, ShiftHours
-    MenuItems: ItemID (PK), Name, Category, Price
-    Orders: OrderID (PK), CustomerID (FK), EmployeeID (FK), OrderDate, TotalAmount
-    OrderDetails: OrderID (PK, FK), ItemID (PK, FK), Quantity, Subtotal
-    Payments: PaymentID (PK), OrderID (FK), PaymentType, Amount, PaymentDate
