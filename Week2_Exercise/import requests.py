import requests
import json

data = json.loads(requests.get('http://www.rideindego.com/stations/json/').text)

with open('indegostatus.geojson', 'w') as f:
    json.dump(data,f)
