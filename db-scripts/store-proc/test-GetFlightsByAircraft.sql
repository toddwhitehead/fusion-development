USE [contosoair]
GO

DECLARE @RC int
DECLARE @Registration nvarchar(6)

SET @Registration = 'VH-YRQ'

-- TODO: Set parameter values here.

EXECUTE @RC = [GetFlightsByAircraft] 
   @Registration
GO


