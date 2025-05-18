USE daraz;
SELECT FirstName, LastName, Description AS Complaint
FROM customers c1
JOIN complaints c2 ON c1.CustomerID = c2.CustomerID;


