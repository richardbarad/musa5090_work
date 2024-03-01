import json

# Load the data from the GeoJSON file
with open('opa_properties_public.geojson', 'r', encoding="utf8") as f:
    data = json.load(f)


# Write the data to a JSONL file
with open('opa_properties.jsonl', 'w') as f:
    for feature in data['features']:
        row = feature['properties']
        row['geog'] = json.dumps(feature['geometry'])
        f.write(json.dumps(row) + '\n')

print("Script Complete")