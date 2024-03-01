CREATE OR REPLACE TABLE phl.opa_properties
CLUSTER BY (geog)
AS (
    SELECT * REPLACE (
        CAST(market_value AS NUMERIC) AS market_value,
        CAST(sale_date AS TIMESTAMP) AS sale_date,
        CAST(sale_price AS NUMERIC) AS sale_price,
        CAST(year_built AS INT64) AS year_built
    )
    FROM data_lake.phl_opa_properties
)