-- Total sales for each product (Top-selling products)
SELECT ProductID, [Product Name], FORMAT(sum(Sales),'#,###,##0') AS TotalSales 
FROM sales_main
GROUP BY ProductID, [Product Name]
ORDER BY TotalSales DESC;

-- Monthly sales trends within a specific year (2019)
SELECT MONTH, FORMAT(sum(Sales),'#,###,##0') AS MonthlySales
FROM sales_main
WHERE YEAR = 2019 -- Replace with the specific year
GROUP BY MONTH
ORDER BY Month;


--Sales by Location
SELECT City, FORMAT(sum(Sales),'#,###,##0') AS TotalSales
FROM sales_main
GROUP BY City
ORDER BY TotalSales DESC;


-- Sales performance by country
SELECT Country, FORMAT(sum(Sales),'#,###,##0') AS TotalSales
FROM sales_main
GROUP BY Country
ORDER BY TotalSales DESC;


-- Total sales by customer type 
SELECT S.Channel, FORMAT(sum(Sales),'#,###,##0') AS TotalSales
FROM sales_main S
JOIN channels$ C
ON s.cHANNELID = c.channelid
GROUP BY S.Channel
ORDER BY TotalSales DESC;

-- Sales comparison across sectors
SELECT [Sub-channel], FORMAT(sum(Sales),'#,###,##0') AS TotalSales
FROM sales_main S
JOIN channels$ C
ON s.cHANNELID = c.channelid
GROUP BY [Sub-channel]
ORDER BY TotalSales DESC;


-- Top-selling products within each drug class
SELECT [Product Class], P.[Product Name], FORMAT(sum(Sales),'#,###,##0') AS TotalSales
FROM sales_main S
JOIN Products$ P
ON S.ProductID = P.ProductID
GROUP BY [Product Class], P.[Product Name]
ORDER BY [Product Class], TotalSales DESC;


-- Average price for each class of drugs
SELECT P.[Product Class], FORMAT(AVG(Price),'#,###,##0.###\,##') AS AveragePrice
FROM Products$ P
JOIN sales_main S
ON P.ProductID = S.ProductID
GROUP BY P.[Product Class]
ORDER BY P.[Product Class];



-- Top-performing sales representatives based on total sales
SELECT S.SalesRepID, SalesRepName, FORMAT(sum(Sales),'#,###,##0') AS TotalSales
FROM sales_main S
JOIN ['SalesRep$'] SR
ON S.SalesRepID = SR.SalesRepID
GROUP BY S.SalesRepID, SalesRepName
ORDER BY TotalSales DESC;


-- Sales performance across different sales teams
SELECT SalesTeam, FORMAT(sum(Sales),'#,###,##0') AS TotalSales
FROM sales_main S
JOIN ['SalesRep$'] SR
ON S.SalesRepID = SR.SalesRepID
GROUP BY SalesTeam
ORDER BY TotalSales DESC;


-- Year-over-year growth in total sales
SELECT YEAR, FORMAT(sum(Sales),'#,###,##0') AS TotalSales
FROM sales_main
GROUP BY YEAR
ORDER BY Year;

--Months with consistently high sales volume
SELECT MONTH, FORMAT(sum(Sales),'#,###,##0') AS TotalSales
FROM sales_main
GROUP BY MONTH
ORDER BY TotalSales DESC;

