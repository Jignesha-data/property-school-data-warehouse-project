CREATE PROCEDURE rpt_LocalSchools
    @State NVARCHAR(50),
    @City NVARCHAR(100),
    @Suburb NVARCHAR(100)
AS
BEGIN
    SELECT 
        L.state,
        L.city,
        L.suburb,
        S.school_name,
        S.school_type
    FROM [dbo].[Fact_School] FS
    INNER JOIN [dbo].[Dim_Location] L
        ON FS.LocationKey = L.LocationKey
    INNER JOIN [dbo].[Dim_school] S
        ON FS.SchoolKey = S.SchoolKey
    WHERE L.State = @State
      AND L.City = @City
      AND L.Suburb = @Suburb;
END;
GO