IF OBJECT_ID('GetEmployeeById_Dacpac_june062023', 'P') IS NOT NULL
BEGIN
    DROP PROCEDURE GetEmployeeById_Dacpac_june062023;
END

GO

CREATE Procedure [dbo].[GetEmployeeById_Dacpac_june062023]
(@EmployeeID as int)

as


select * from Employee where EmployeeID = @EmployeeID

Go
