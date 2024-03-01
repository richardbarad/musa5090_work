ogr2ogr `
  -f "PostgreSQL" `
  -nln "indego_station_statuses" `
  -lco "OVERWRITE=yes" `
  -lco "GEOM_TYPE=geography" `
  -lco "GEOMETRY_NAME=geometry" `
  PG:"host=localhost port=5432 dbname=week02_db user=postgres password=Chiesaditotti10" `
  "C:\\Users\\richa\\OneDrive\\Documents\\School\\UPENN\\Spring_2023\\CloudComputing\\Week2_Inclass_Exercise\\indego_station_status.geojson"