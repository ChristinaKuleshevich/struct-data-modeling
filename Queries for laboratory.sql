-- QUERIES database 'Laboratory'

-- 1. Which hoods failed inspection (included their department), and what materials/tests rely on them?

SELECT HoodID, DateRecentInspect, Result, TestID, LotNumber, Name AS MaterialName FROM INSPECT NATURAL LEFT JOIN FUMEHOOD
NATURAL LEFT JOIN USES NATURAL LEFT JOIN MATERIAL WHERE Result = 'Fail' ORDER BY HoodID, TestID;

-- 2. List all employees hired after 2023/01/01. Show EmployeeID, First, Last, HireDate, Salary, ordered by HireDate.

SELECT * FROM EMPLOYEE WHERE HireDate >= '2023/01/01' ORDER BY HireDate;

-- 3. Which employees handled the most tests (show EmployeeID, First, Last names, Number of handled tests)?

SELECT EmployeeID, First, Last, COUNT(TestID) AS Numb_Handled_Tests FROM EMPLOYEE NATURAL LEFT JOIN HANDLES 
  GROUP BY EmployeeID, First, Last ORDER BY Numb_Handled_Tests DESC;

-- 4. Which employees work most often with which clients?

SELECT EmployeeID, First, Last, ClientID, CompanyName, COUNT(*) AS NumInteractions FROM HANDLES NATURAL LEFT JOIN EMPLOYEE
NATURAL LEFT JOIN CLIENT GROUP BY EmployeeID, First, Last, ClientID, CompanyName ORDER BY NumInteractions DESC, EmployeeID, ClientID;

-- 5. Which clients order the most tests?

SELECT ClientID, CompanyName, COUNT(TestID) AS Numb_Ordered_Tests FROM CLIENT NATURAL LEFT JOIN HANDLES 
  GROUP BY ClientID, CompanyName ORDER BY Numb_Ordered_Tests DESC;

-- 6. Are some tests ordered by multiple clients (the most popular test)? 

SELECT TestID, COUNT(ClientID) AS Numb_Ordered_Tests FROM HANDLES GROUP BY TestID ORDER BY Numb_Ordered_Tests DESC;

-- 7. Which types of materials are used in the most tests? 

SELECT LotNumber, Name, COUNT(TestID) AS Numb_Used FROM MATERIAL NATURAL LEFT JOIN USES GROUP BY LotNumber, Name ORDER BY Numb_Used DESC;

-- 8. Which departments have the most fume hoods?

SELECT DepName, COUNT(HoodID) AS Numb_Fumehoods FROM DEPARTMENT NATURAL JOIN FUMEHOOD GROUP BY DepName ORDER BY Numb_Fumehoods DESC;

-- 9. Which materials expire in 2025 and 2026?

SELECT LotNumber, Name, ExpDate FROM MATERIAL WHERE YEAR(ExpDate) = 2025 OR YEAR(ExpDate) = 2026 ORDER BY ExpDate ASC;

-- 10. Which states generate the most orders?

SELECT State, COUNT(TestID) AS Numb_Orders FROM CLIENT NATURAL JOIN ORDERS GROUP BY State ORDER BY Numb_Orders DESC;

-- 11. Which department supports the most tests (via fume hoods)?

SELECT DepName, COUNT(*) AS TestsSupported FROM USES NATURAL LEFT JOIN FUMEHOOD NATURAL LEFT JOIN DEPARTMENT 
  GROUP BY DepName ORDER BY TestsSupported DESC;

-- 12. Which fume hoods are used by the most tests? 

SELECT HoodID, COUNT(TestID) AS Numb_Tests FROM USES GROUP BY HoodID ORDER BY Numb_Tests DESC;

-- 13. Which clients’ orders depend on failed fume hoods?

SELECT HoodID, TestID, ClientId, CompanyName FROM INSPECT NATURAL LEFT JOIN USES NATURAL LEFT JOIN ORDERS NATURAL LEFT JOIN CLIENT 
  WHERE Result = 'Fail' GROUP BY CompanyName, ClientID, TestID;