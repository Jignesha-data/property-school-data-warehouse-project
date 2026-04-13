CREATE PROCEDURE rpt_RentalValue
    @State NVARCHAR(50),
    @City NVARCHAR(100),
    @Suburb NVARCHAR(100)
AS
BEGIN
    SELECT 
        L.state,
        L.city,
        L.suburb,
       
        R.RentalAmount
    FROM  [dbo].[Fact_Rental] R
    INNER JOIN  [dbo].[Dim_Location] L
        ON R.LocationKey = L.LocationKey
    WHERE L.State = @State
      AND L.City = @City
      AND L.Suburb = @Suburb;
END;
GO