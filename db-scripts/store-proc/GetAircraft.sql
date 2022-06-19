-- =======================================================
-- Create Stored Procedure Template for Azure SQL Database
-- =======================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.GetAircraft
AS
BEGIN
    SET NOCOUNT ON

BEGIN  
  SELECT 
          registration
           ,manufacturer
           ,model
           ,[serial]
           ,manufacture_year
           ,capacity           
           ,num_engines
           ,rate
           ,[status]
           ,status_reason 
           ,maintenance_date
           ,mtow
           ,engine_type
           ,image_url
  FROM Aircraft
END
END
GO
