📊 Property & School Data Warehouse & Analytics Project

🔹 Overview
This project demonstrates the design and implementation of an end-to-end Data Warehouse and Business Intelligence solution using Australian datasets such as Property, Schools, Location, Transport, and Crime data.

The project covers the complete pipeline:
Data Extraction → Transformation → Data Warehouse → Reporting → Dashboard Visualization

🔹 Tools & Technologies
- SQL Server (T-SQL)
- SSIS (ETL – Extract, Transform, Load)
- SSRS (Reporting)
- Power BI (Dashboard & Visualization)
- Excel / CSV (Data Sources)
- Dimensional Modeling (Star Schema)


🔹 Project Architecture

- Extract data from CSV/Excel files
- Transform data using SSIS
- Load into staging tables (`load_`)
- Design Data Warehouse (Fact & Dimension tables)
- Build SSRS reports
- Create Power BI dashboards


🔹 Data Warehouse Design

Dimension Tables
- DimDate
- DimLocation (Suburb, City, State, Latitude, Longitude)
- DimSchool
- DimCategory (Property Value Buckets)

Fact Tables
- FactProperty (Median Property Values)
- FactSchool (School Data)



🔹 ETL Process (SSIS)
- Extracted data from multiple datasets
- Cleaned data (null handling, duplicates, data types)
- Transformed and loaded into staging and warehouse tables
- Implemented data validation checks



🔹 SQL Analysis
- Calculated average property values by suburb and postcode
- Analyzed school distribution by location
- Used joins, aggregations, and filtering for insights



🔹 Reporting (SSRS)
- Created parameterized reports:
  - State
  - City
  - Suburb
  - Postcode
- Displayed property values and school details dynamically


 🔹 Power BI Dashboard
- Interactive dashboards with:
  - Map visuals (Latitude & Longitude)
  - Slicers (State, City, Suburb)
  - KPI cards and charts
- Drill-through functionality for detailed insights
- Integration with SSRS report links


