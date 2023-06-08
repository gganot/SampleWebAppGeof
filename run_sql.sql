

Create Procedure GetEmployeeById_From_Github
(@EmployeeID as int)

as


select * from Employee where EmployeeID = @EmployeeID

Go

