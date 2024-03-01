ogr2ogr `
  -f "PostgreSQL" `
  -nln "neighboorhood" `
  -lco "OVERWRITE=yes" `
  -lco "SCHEMA=indego" `
  -lco "GEOM_TYPE=geography" `
  -lco "GEOMETRY_NAME=geog" `
  PG:"host=localhost port=5432 dbname=hw01 user=postgres password=Chiesaditotti10" `
  "C:\Users\richa\GitHub\musa_5090_assignment01\data\indego_station_status.geojson"