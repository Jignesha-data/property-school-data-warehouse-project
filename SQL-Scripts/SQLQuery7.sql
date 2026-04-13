CREATE PROCEDURE rpt_CrimeSummary
    @State NVARCHAR(50),
    @City NVARCHAR(100),
    @Suburb NVARCHAR(100)
AS
BEGIN
    SELECT 
        L.state,
        L.city,
        L.suburb,
       
        SUM(F.RecordedIncidents) AS TotalRecordedIncidents
    FROM [dbo].[Fact_Crime] F
    INNER JOIN [dbo].[Dim_Location] L
        ON F.LocationKey = L.LocationKey
    INNER JOIN [dbo].[Dim_CrimeType] C
        ON F.CrimeTypeKey = C.CrimeTypeKey
    WHERE L.State = @State
      AND L.City = @City
      AND L.Suburb = @Suburb
    GROUP BY 
        L.state,
        L.city,
        L.suburb,
        C.offence_category
    ORDER BY TotalRecordedIncidents DESC;
END;
GO