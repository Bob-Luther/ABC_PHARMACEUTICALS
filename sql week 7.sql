CREATE DATABASE ABC_Pharmaceutical;
GO

USE ABC_Pharmaceutical;
GO

CREATE TABLE Products (
    ProductID float PRIMARY KEY,
    ProductName NVARCHAR(255),
    ProductClass NVARCHAR(255)
);

CREATE TABLE Channels (
    ChannelID float PRIMARY KEY,
    Channel NVARCHAR(255),
	SubChannel NVARCHAR(255)
);

CREATE TABLE SalesReps (
    SalesRepID  PRIMARY KEY,
    SalesRepName NVARCHAR(255),
    Manager NVARCHAR(255),
    SalesTeam NVARCHAR(255)
);


CREATE TABLE Sales (
    SalesID float PRIMARY KEY,
    Distributor NVARCHAR(255),
    CustomerName NVARCHAR(255),
    City NVARCHAR(255),
    Country NVARCHAR(255),
    Latitude float,
    Longitude float,
	ProductID float,
	channelID Float,
    Channel NVARCHAR(255),
    Product Name NVARCHAR(255),
    Quantity INT,
    Price float,
	Sales float,
    Month NVARCHAR(255),
    Year float,
	salesrepID float,
    Manager NVARCHAR(255),
    
);


SELECT *
FROM Sales
WHERE CustomerName IS NULL
   OR ProductID IS NULL
   OR Quantity IS NULL;


SELECT COUNT(*) AS TotalRecords FROM Sales;
SELECT COUNT(DISTINCT CustomerName) AS UniqueCustomers FROM Sales;

CREATE USER SecureUser WITHOUT LOGIN;