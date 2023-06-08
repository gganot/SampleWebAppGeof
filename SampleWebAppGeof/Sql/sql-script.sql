
Create Procedure GetEmployeeById_New
(@id as int)

as

Select * from Employee where EmployeeID = @id

Go

Alter Table Employee
Add Department varchar(100) null
Go

CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[EmployeeClient](
	[EmployeeClientId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_EmployeeClient] PRIMARY KEY CLUSTERED 
(
	[EmployeeClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[EmployeeClient]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeClient_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeId])
GO

ALTER TABLE [dbo].[EmployeeClient] CHECK CONSTRAINT [FK_EmployeeClient_Employee]
GO


CREATE TABLE [dbo].[Attendance](
	[AttendanceId] [int] IDENTITY(1,1) NOT NULL,
	[TimeRecordingId] [int] NULL,
	[datework] [datetime] NOT NULL,
	[timein] [datetime] NOT NULL,
	[timeout] [datetime] NULL,
	[totalhours] [float] NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[AttendanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_TimeRecording] FOREIGN KEY([TimeRecordingId])
REFERENCES [dbo].[TimeRecording] ([TimeRecordingId])
GO

ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_TimeRecording]
GO

