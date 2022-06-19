-- =======================================================
-- Create Stored Procedure Template for Azure SQL Database
-- =======================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.GetFlightsByAircraft
(
    -- Add the parameters for the stored procedure here
    @Registration nvarchar(6)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

BEGIN  
  SELECT 
   registration,
   flight_date,
	 start_hobbs,
	 end_hobbs,
	 numpax,
	 comments,
	 pilot.name
  FROM Flights
  INNER JOIN pilot ON  pilot.id = pilot_id
  WHERE registration = @Registration
END
END
GO
