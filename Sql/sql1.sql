CREATE Procedure [dbo].[GetEmployeeById_Dacpac_june062023]
(@EmployeeID as int)

as


select * from Employee where EmployeeID = @EmployeeID

Go
