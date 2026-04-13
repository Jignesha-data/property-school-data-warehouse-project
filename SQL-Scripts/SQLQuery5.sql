CREATE PROCEDURE rpt_LocalTransport
    @State NVARCHAR(50),
    @City NVARCHAR(100),
    @Suburb NVARCHAR(100)
AS
BEGIN
    SELECT 
        L.state,
        L.city,
        L.suburb,
        T.stop_name,
        T.mode
    FROM  [dbo].[Fact_Transport] FT
    INNER JOIN  [dbo].[Dim_Location] L
        ON FT.LocationKey = L.LocationKey
    INNER JOIN  [dbo].[Dim_TransportType] T
        ON FT.TransportFactKey = T.TransportTypeKey
    WHERE L.State = @State
      AND L.City = @City
      AND L.Suburb = @Suburb;
END;
GO