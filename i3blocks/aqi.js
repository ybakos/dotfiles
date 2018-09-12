#! /usr/bin/env node
// aqi.js
// Fetches the current air quality index, shamelessly hard-coded for the 97703
// zip code and airnow.gov api token.

const https = require('https')
const AIRNOW_API_URL = "https://www.airnowapi.org/aq/observation/zipCode/current/?format=application/json&zipCode=97703&distance=25&API_KEY=EABD54C6-1A53-4B2F-AEF0-2D184D40DCAD"
https.get(AIRNOW_API_URL, (response) => {

  response.on('data', (data) => {
    responseBody = JSON.parse(data)
    const aqi = parseAqiFromResponseBody(responseBody)
    if (isNaN(aqi)) {
      aqi = '?'
      color = '#373b41'
    } else if (aqi <= 50) {
      color = '#b5bd68'
    } else if (aqi <= 100) {
      color = '#f0c674'
    } else if (aqi <= 150) {
      color = '#de935f'
    } else if (aqi <= 200) {
      color = '#cc6666'
    } else if (aqi <= 300) {
      color = '#b294bb'
    } else if (aqi > 300) {
      color = '#a3685a'
    }
    console.log(`${aqi}\n${aqi}\n${color}`)

  })
}).on('error', error =>
  console.error(error)
)

const parseAqiFromResponseBody = (body) => parseInt(body[0].AQI)
