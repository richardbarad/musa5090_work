import fetch from 'node-fetch';
import fs from 'fs/promises';

const url = 'https://opendata.arcgis.com/datasets/84baed491de44f539889f2af178ad85c_0.geojson';
const filename = 'phl_pwd_parcels.geojson';

const response = await fetch(url);
if (!response.ok) {
  throw new Error(`HTTP error! status: ${response.status}`);
}

await fs.writeFile(filename, await response.text());

console.log(`Downloaded ${filename}`);
