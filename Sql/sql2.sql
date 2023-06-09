IF OBJECT_ID('GetEmployeeBy_Final', 'P') IS NOT NULL
BEGIN
    DROP PROCEDURE GetEmployeeBy_Final;
END

GO

Create Procedure GetEmployeeBy_Final
(@id as int)

as

Select * from Employee where EmployeeID = @id

Go
