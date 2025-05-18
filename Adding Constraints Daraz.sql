###################################################################################
# COMSATS University Islamabad
# Group Members: Abdul Basit Qureshi (FA21-BCE-003)
# 				  Ifrah Khan (FA21-BCE-028)
# Project: Daraz Database Management System
# Description: In this file, we added some constraints
# 			   UNIQUE, DEFAULT, CHECK
# Date: 17-December-2023
###################################################################################
USE daraz;
# adding UNIQUE constraints
ALTER TABLE Customers
ADD UNIQUE (Email);

ALTER TABLE Users
ADD UNIQUE (Email);

ALTER TABLE sellers
ADD UNIQUE (Email),
ADD UNIQUE (Phone);

ALTER TABLE brands
ADD UNIQUE (BrandName);


# adding DEFAULT constraint
ALTER TABLE Customers
ALTER Points SET DEFAULT 0;


# adding CHECK constraint
ALTER TABLE Cart
ADD CHECK (TotalQuantity > 0),
ADD CHECK (TotalPrice > 0);

ALTER TABLE CartProducts
ADD CHECK (Quantity > 0);

ALTER TABLE Customers
ADD CHECK (Points > 0);

ALTER TABLE Orders
ADD CHECK (TotalAmount > 0);

ALTER TABLE OrdersDetail
ADD CHECK (Quantity > 0),
ADD CHECK (UnitPrice > 0);

ALTER TABLE Payments
ADD CHECK (Amount > 0);

ALTER TABLE Products
ADD CHECK (Price > 0),
ADD CHECK (StockQuantity >= 0);

ALTER TABLE Reviews
ADD CHECK (Rating BETWEEN 1 AND 5);