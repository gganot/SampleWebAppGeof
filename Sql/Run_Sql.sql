IF OBJECT_ID('GetEmployeeBy_June192023', 'P') IS NOT NULL
BEGIN
    DROP PROCEDURE GetEmployeeBy_June192023;
END

GO

Create Procedure GetEmployeeBy_June192023
(@id as int)

as

Select * from Employee where EmployeeID = @id

Go
