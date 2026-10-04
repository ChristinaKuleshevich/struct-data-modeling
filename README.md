# Database Proposal for Drug Testing Laboratory
For our project, we will be focusing on building out a database for a drug testing laboratory. The laboratory wants to track a variety of information related to the tests they perform, their clients and the equipment they use. They need a system that would store all the information of their clients, employees, tests, and materials. In general, work is initiated at the lab when clients order tests. These drug tests are then performed by employees in fume hoods using chemicals/materials and the results are sent back to the clients. While the lab has a separate system for organizing the results of the tests, they do want this database to include information about the clients and link that information to the tests that are being performed for them. It will also contain information about employees. 

Due to the volatility and danger of some of the chemicals used in the tests, all tests are performed in fume hoods (see Picture 1 in Supplementary Materials.) These fume hoods have filters and fans within them that pull air from the outside into the hood through it, as well as a shash (a sliding glass panel at the front of the hood) that can be raised or lowered and to ensure no toxic fumes escape into the room  (Picture 2). The fume hoods must be used to ensure that employees are not exposed to these chemicals and also have routine maintenance that the lab wants to track.

This database will allow the laboratory to organize and easily access information about their employees, tests, clients, and laboratory equipment as well as how those things relate to each other. It will allow the laboratory to determine which materials and fume hoods were used for specific tests through foreign keys and junction tables, which is important from a quality assurance standpoint should a test fail. The laboratory will also be able to compile and streamline existing information into one database that can be easily navigated and accessed by management. 

Relational Schema
 
1. EMPLOYEE (EmployeeID, First, Middle, Last, HireDate, Salary) 
2. TEST (TestID) 
3. CLIENT (ClientID, CompanyName, ContactName, Street, City, State, ZipCode)
CLIENTPHONENUM (PhoneNum, ClientID[FK])
4. ORDERS (TestID[FK], ClientID[FK])
5. HANDLES (EmployeeID[FK], TestID[FK], ClientID[FK], Date)
6. FUMEHOOD (HoodID, DepName[FK])
7. DEPARTMENT (DepName)
8. MATERIAL (LotNumber, Name, ExpDate)
9. CONTAIN (HoodID[FK], LotNumber[FK])
10. USES (TestID[FK], HoodID[FK], LotNumber[FK])
11. TECHNICIAN (TechID, First, Middle, Last, CompanyName)
12. INSPECT(TechID[FK], HoodID[FK], DateRecentInspect, Result)
