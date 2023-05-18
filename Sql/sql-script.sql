
Create Procedure GetEmployeeById
(@id as int)

as

Select * from Employee where EmployeeID = @id

Go


