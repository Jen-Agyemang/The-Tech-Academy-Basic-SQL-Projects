
/* the database I want to use */ 

USE [drill_One]


/* Create a database with two tables. Assign a foreign key constraint on one table that shares related data with the primary key on the second table. Finally, create a statement that queries data from both tables.

*/

/* Table 1 */

CREATE TABLE Employee (
EmployeeID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
LastName varchar(255),
FirstName varchar (255) 
);


INSERT INTO Employee ( LastName, FirstName )
VALUES ('Wap', 'Molly' );

SELECT * FROM Employee; 


/* Table 2 with foreign key */ 

CREATE TABLE Employee1 (
EmployeeID  INT NOT NULL PRIMARY KEY CONSTRAINT FK_FirstName FOREIGN KEY REFERENCES Employee(EmployeeID),
Contact varchar(255) NOT NULL,
Adress varchar(255) NOT NULL,

);



INSERT INTO Employee1 (EmployeeID, Contact, Adress)
VALUES (1, '234-567-3456', '12343 16TH AVE OXFORD WA 98432');


SELECT * FROM Employee1;



/* Query statement from both tables */



SELECT EMPLOYEE.EMPLOYEEID, EMPLOYEE1.CONTACT
FROM (EMPLOYEE 
INNER JOIN Employee1 ON Employee.EMPLOYEEID = EMPLOYEE1.EMPLOYEEID);


