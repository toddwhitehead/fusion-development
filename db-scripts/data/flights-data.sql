USE [contosoair]
GO

INSERT INTO [dbo].[flights]
           ([registration]
           ,[flight_date]
           ,[start_hobbs]
           ,[end_hobbs]
           ,[numpax]
           ,[pilot_id]
           ,[comments])
     VALUES
           ('VH-AZR','20220601 10:34:09 AM', 1123, 1156,2,1,'All Good'),
		   ('VH-AZR','20220601 10:34:09 AM', 1123, 1156,2,1,'Fine'),
		   ('VH-AZR','20220602 10:34:09 AM', 1156, 1190,1,1,'Right Wheel Low'),
		   ('VH-AZR','20220602 10:34:09 AM', 1190, 1240,2,1,'All Good'),
		   ('VH-AZR','20220602 10:34:09 AM', 1240, 1290,2,1,'Needs External Clean'),
		   ('VH-YRQ','20220602 10:34:09 AM', 1123, 1156,1,1,'All Good'),
		   ('VH-AZR','20220603 10:34:09 AM', 1290, 1354,2,1,'Passenger Ill'),
		   ('VH-AZR','20220603 10:34:09 AM', 1354, 1403,1,1,'All Good'),
		   ('VH-YRQ','20220603 10:34:09 AM', 1156, 1260,2,1,'Birds on Final')
GO


