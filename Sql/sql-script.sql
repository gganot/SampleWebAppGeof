IF OBJECT_ID('GetEmployeeBy_TEST12333', 'P') IS NOT NULL
BEGIN
    DROP PROCEDURE GetEmployeeBy_TEST12333;
END

GO

Create Procedure GetEmployeeBy_TEST12333
(@id as int)

as

Select * from Employee where EmployeeID = @id

Go


