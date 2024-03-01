ogr2ogr `
  -f "PostgreSQL" `
  -nln "neighboorhoods" `
  -lco "OVERWRITE=yes" `
  -lco "SCHEMA=phl" `
  -lco "GEOM_TYPE=geography" `
  -lco "GEOMETRY_NAME=geog" `
  PG:"host=localhost port=5432 dbname=week03_db user=postgres password=Chiesaditotti10" `
  "C:\Users\richa\OneDrive\Documents\School\UPENN\Spring_2023\CloudComputing\Week3_Exercise\phl_neighboorhoods.geojson"