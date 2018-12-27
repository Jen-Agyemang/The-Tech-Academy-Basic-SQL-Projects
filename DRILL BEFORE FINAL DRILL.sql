
/*
-- FOR PRACTICE

/* CREATE STORED PROCEDURE */

CREATE PROCEDURE dbo.uspContact 
AS
SELECT * FROM Person.ContactType
GO;

/* CALL PROCEDURE TO RETURN THE CONTENTS FROM THE TABLE */ 

EXECUTE dbo.uspContact 

SELECT * FROM Person.ContactType;

*/



SELECT * FROM Person.Password;


/* DRILL STARTS FROM HERE */

USE [AdventureWorks2014]
GO

CREATE PROCEDURE dbo.uspGetPassword @PasswordSalt nvarchar(10) = NULL, @PasswordHash nvarchar(128) = NULL
AS
SELECT * FROM Person.Password
WHERE PasswordSalt = ISNULL (@PasswordSalt, PasswordSalt)

GO
;



/* TO EXECUTE PROC */

EXECUTE dbo.uspGetPassword @PasswordSalt = 'bE3XiWw='


/*
--	THIS IS A TEST 

CREATE PROCEDURE dbo.uspGetAddress @city nvarchar(30) = NULL, @AddressLine1 nvarchar(60) = NULL
AS
SELECT * FROM Person.Address 
WHERE City = ISNULL (@City, City) 
GO
;

EXECUTE dbo.uspGetAddress @City = 'Calgary'
*/


