'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
const host = process.env.HOSTNAME || '0.0.0.0';
app.get('/', (req, res) => {
  res.send(`<h1>Hello world!!</h1><p>${host}</p>`);
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
