DROP TABLE indego_stations IF EXISTS
CREATE TABLE indego_stations
(
station_id INTEGER,
station_name TEXT,
go_live_date TEXT
)

COPY indego_stations
FROM 'C:\Users\richa\OneDrive\Documents\School\UPENN\Spring_2023\CloudComputing\Week2_Exercise\indego-stations-2024-01-01_clean.csv'
WITH (FORMAT csv, HEADER true)

ALTER TABLE indego_stations
ALTER COLUMN go_live_date TYPE DATE
	USING to_date(go_live_date, 'MM/DD/YYYY')