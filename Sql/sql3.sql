IF OBJECT_ID('GetEmployeeBy_Final_X', 'P') IS NOT NULL
BEGIN
    DROP PROCEDURE GetEmployeeBy_Final_X;
END

GO

Create Procedure GetEmployeeBy_Final_X
(@id as int)

as

Select * from Employee where EmployeeID = @id

Go
