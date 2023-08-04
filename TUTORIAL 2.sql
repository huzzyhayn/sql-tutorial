USE [hussain]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[test]

SELECT	'Return Value' = @return_value

GO
