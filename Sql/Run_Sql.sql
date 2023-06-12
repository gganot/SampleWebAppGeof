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
