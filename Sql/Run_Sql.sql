Alter table Employee 
Add DailyRate decimal(18,2) null
Go


Alter table Employee 
Add HourlyRate decimal(17,2) null
Go




Create Procedure sp_TestJune122023

as


select * from [dbo].[Employee]

go

Alter table Employee 
Add MiddleName varchar(100) null
Go

Alter Procedure sp_TestJune122023

as

Select top 1 * from Employee where EmployeeID=1

Go

ALTER TABLE Employee
DROP COLUMN HourlyRate;

Go

CREATE FUNCTION east_or_west (
	@long DECIMAL(9,6)
)
RETURNS CHAR(4) AS
BEGIN
	DECLARE @return_value CHAR(4);
	SET @return_value = 'same';
    IF (@long > 0.00) SET @return_value = 'east';
    IF (@long < 0.00) SET @return_value = 'west';
 
    RETURN @return_value
END;


Go

Create FUNCTION [dbo].[ufnGetAccountingEndDate]()
RETURNS [datetime]
AS
BEGIN
    RETURN DATEADD(millisecond, -2, CONVERT(datetime,'20040701', 112));
END;

Go

ALTER FUNCTION [dbo].[ufnGetAccountingEndDate]()
RETURNS [datetime]
AS
BEGIN
   return GetDate()
END;

Go

ALTER Procedure [dbo].[GetEmployee]
(@EmployeeID as int)

as

Select * from Employee where EmployeeID=@EmployeeID


Go

Alter table Employee 
Add HourlyRate float null
Go

CREATE TABLE Locations (LocationID int, LocName varchar(100))

Go
 
CREATE TABLE LocationHist (LocationID int, ModifiedDate DATETIME)

Go

CREATE TRIGGER TR_UPD_Locations ON Locations
FOR UPDATE 
NOT FOR REPLICATION 
AS
 
BEGIN
  INSERT INTO LocationHist
  SELECT LocationID
    ,getdate()
  FROM inserted
END

Go