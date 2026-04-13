CREATE PROCEDURE rpt_HouseValue
    @State NVARCHAR(50),
    @City NVARCHAR(100),
    @Suburb NVARCHAR(100)
AS
BEGIN
    SELECT 
        L.state,
        L.city,
        L.suburb,
        H.House_Value
    FROM [dbo].[FACT_HouseValue] H
    INNER JOIN [dbo].[Dim_Location] L
        ON H.LocationKey = L.LocationKey
    WHERE L.State = @State
      AND L.City = @City
      AND L.Suburb = @Suburb;
END;
GO