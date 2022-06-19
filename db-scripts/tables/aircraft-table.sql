/****** Object:  Table [dbo].[aircraft]    Script Date: 6/06/2022 11:26:39 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aircraft]') AND type in (N'U'))
DROP TABLE [dbo].[aircraft]
GO

/****** Object:  Table [dbo].[aircraft]    Script Date: 6/06/2022 11:26:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[aircraft](
	[registration] [nchar](6) NOT NULL,
	[serial] [nvarchar](20) NULL,
	[manufacturer] [nvarchar](50) NULL,
	[model] [nvarchar](50) NULL,
	[manufacture_year] [int] NULL,
	[num_engines] [smallint] NULL,
	[capacity] [smallint]  NULL,
	[rate] [float] null,
	[status] [nvarchar](15) NULL,
	[status_reason] [nvarchar](50) NULL,
	[maintenance_date] [Date] null,
	[mtow] [smallint] null,
	[engine_type][nchar](10) NULL,
	[image_url][nvarchar](250) NULL
 CONSTRAINT [PK_aircraft] PRIMARY KEY CLUSTERED 
(
	[registration] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


