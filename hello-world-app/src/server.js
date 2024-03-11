'use strict';
const express = require('express');
// Constants
const PORT = 9080;
const HOST = '0.0.0.0';
// App
const app = express();
app.get('/hello', (req, res) => {
  res.send('Hello world ');
});
app.get('/health-check', (req, res) => {
  res.send("Health check passed");
});
app.get('/bad-health', (req, res) => {
  res.status(500).send('Health check did not pass');
});
app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
