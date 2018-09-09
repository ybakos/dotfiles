const https = require('https');
const AIRNOW_API_URL = "https://www.airnowapi.org/aq/observation/zipCode/current/?format=application/json&zipCode=97703&distance=25&API_KEY=EABD54C6-1A53-4B2F-AEF0-2D184D40DCAD"
https.get(AIRNOW_API_URL, (response) => {

  response.on('data', (data) => {
    process.stdout.write(data);
  });
}).on('error', (error) => {
  console.error(error);
});
