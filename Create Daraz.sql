################################################################
# COMSATS University Islamabad
# Group Members: Abdul Basit Qureshi (FA21-BCE-003)
# 				  Ifrah Khan (FA21-BCE-028)
# Project: Daraz Database Management System
# Description: In this file, we created database and tables 
# 			   with NOT NULL constraints
# Date: 17-December-2023
#################################################################

DROP DATABASE IF EXISTS Daraz;
CREATE DATABASE Daraz;
USE Daraz;

-- Create Users table
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Address VARCHAR(255),
    Password VARCHAR(255) NOT NULL
);


-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Country VARCHAR(50),
    OrderID INT,
    PostalCode VARCHAR(20) NOT NULL,
    Points INT NOT NULL,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);



-- Create Sellers table
CREATE TABLE Sellers (
    SellerID INT PRIMARY KEY,
    UserID INT NOT NULL,
    SellerName VARCHAR(50) NOT NULL,
    ShopName VARCHAR(50) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);


-- Create Brands table
CREATE TABLE Brands (
    BrandID INT PRIMARY KEY,
    BrandName VARCHAR(255) NOT NULL,
    Description TEXT
);


-- Create Categories table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL
);


-- Create SubCategories table
CREATE TABLE SubCategories (
	SubcategoryID INT PRIMARY KEY,
	CategoryID INT NOT NULL,
	SubcategoryName VARCHAR(255) NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);


-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL,
    BrandID INT,
    SellerID INT NOT NULL,
    SubcategoryID INT NOT NULL,
    FOREIGN KEY (SubcategoryID) REFERENCES SubCategories(SubcategoryID),
    FOREIGN KEY (BrandID) REFERENCES Brands(BrandID),
    FOREIGN KEY (SellerID) REFERENCES Sellers(SellerID)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    OrderStatus VARCHAR(50) NOT NULL,
    Comments TEXT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


-- Create Wishlist table
CREATE TABLE Wishlist (
    WishlistID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    AddedDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create Reviews table
CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    UserID INT NOT NULL,
    ProductID INT NOT NULL,
    Rating INT NOT NULL,
    Comments TEXT,
    ReviewDate DATE NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


-- Create OrdersDetail table
CREATE TABLE OrdersDetail (
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


-- Create ShippingDetails table
CREATE TABLE ShippingDetails (
    ShippingID INT PRIMARY KEY,
    OrderID INT NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(50) NOT NULL,
    State VARCHAR(50),
    Country VARCHAR(50) NOT NULL,
    ShippingDate DATE NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);


-- Create Complaints table
CREATE TABLE Complaints (
    ComplaintID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderID INT NOT NULL,
    Description TEXT,
    Date DATE NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);


-- Create Cart table
CREATE TABLE Cart (
    CartID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    TotalQuantity INT NOT NULL,
    TotalPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


-- Create CartProducts table
CREATE TABLE CartProducts (
	CartID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (CartID) REFERENCES Cart(CartID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


-- Create Payments table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT NOT NULL,
    PaymentDate DATE NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentMethod VARCHAR(50) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);



-- Create Promotions table
CREATE TABLE Promotions (
    PromotionID INT PRIMARY KEY,
    ProductID INT NOT NULL,
    PromotionName VARCHAR(50) NOT NULL,
    Description TEXT,
    DiscPercent DECIMAL(5, 2) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);