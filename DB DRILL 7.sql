
/* the database I want to use */ 

USE [drill_One]

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


SELECT Employee.FirstName 
FROM (Employee
INNER JOIN Employee1 ON Employee.FirstName = Employee.FirstName);