USE [contosoair]
GO

INSERT INTO [dbo].[aircraft]
           ([registration]
           ,[serial]
           ,[manufacturer]
           ,[model]
           ,[manufacture_year]
           ,[num_engines]
           ,[capacity]
           ,[rate]
           ,[status]
           ,[status_reason]
           ,[maintenance_date]
           ,[mtow]
           ,[engine_type]
           ,[image_url])
     VALUES
            ('VH-YRQ','172S9313','Cessna','172S',1983,1,4,140.00, 'Available',NULL,'2022-08-12', 1156, 'Piston', 'https://contosoairau.blob.core.windows.net/images/VH-YRQ.jpg'),
	      ('VH-SNU','434556','Cessna','172Q',1977,1,4,140.00, 'Available',NULL,'2022-07-11', 900, 'Piston', 'https://contosoairau.blob.core.windows.net/images/VH-SNU.jpg'),
		('VH-RQU','536257','Cessna','172S',1993,1,3,120.00, 'Unavailable','Maintenance','2022-06-22', 1150, 'Piston', 'https://contosoairau.blob.core.windows.net/images/VH-RQU.jpg'),
		('VH-AZR','876345','Cessna','172P',1994,1,4,120.00, 'Available',NULL,'2022-06-30', 1159, 'Piston', 'https://contosoairau.blob.core.windows.net/images/VH-AZR.jpg'),
            ('VH-SRO','332123','Beechcraft','Duchess76',1976,2,4,160.00, 'Available',NULL,'2022-09-12', 1769, 'Piston', 'https://contosoairau.blob.core.windows.net/images/VH-SRO.jpg')

GO






