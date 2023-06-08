
Create Procedure GetEmployeeById_TEST1
(@id as int)

as

Select * from Employee where EmployeeID = @id

Go


