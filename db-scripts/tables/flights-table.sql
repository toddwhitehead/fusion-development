

/****** Object:  Table [dbo].[flights]    Script Date: 6/06/2022 11:27:46 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[flights]') AND type in (N'U'))

ALTER TABLE [dbo].[flights] DROP CONSTRAINT [FK_flights_pilot]
GO

ALTER TABLE [dbo].[flights] DROP CONSTRAINT [FK_flights_flights]
GO

ALTER TABLE [dbo].[flights] DROP CONSTRAINT [FK_flights_aircraft]
GO

DROP TABLE [dbo].[flights]
GO

/****** Object:  Table [dbo].[flights]    Script Date: 6/06/2022 11:27:46 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[flights](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[registration] [nchar](6) NOT NULL,
	[flight_date] [datetime] NOT NULL,
	[start_hobbs] [bigint] NULL,
	[end_hobbs] [bigint] NULL,
	[numpax] [int] NULL,
	[pilot_id] [bigint] NOT NULL,
	[comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_flights] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[flights]  WITH CHECK ADD  CONSTRAINT [FK_flights_aircraft] FOREIGN KEY([registration])
REFERENCES [dbo].[aircraft] ([registration])
GO

ALTER TABLE [dbo].[flights] CHECK CONSTRAINT [FK_flights_aircraft]
GO

ALTER TABLE [dbo].[flights]  WITH CHECK ADD  CONSTRAINT [FK_flights_flights] FOREIGN KEY([id])
REFERENCES [dbo].[flights] ([id])
GO

ALTER TABLE [dbo].[flights] CHECK CONSTRAINT [FK_flights_flights]
GO

ALTER TABLE [dbo].[flights]  WITH CHECK ADD  CONSTRAINT [FK_flights_pilot] FOREIGN KEY([pilot_id])
REFERENCES [dbo].[pilot] ([id])
GO

ALTER TABLE [dbo].[flights] CHECK CONSTRAINT [FK_flights_pilot]
GO


