require('dotenv').config();
const http = require('http');
const Pusher = require("pusher");

const websocketServer = new Pusher({
  appId: process.env.SOKETI_APP_ID,
  key: process.env.SOKETI_APP_KEY,
  secret: process.env.SOKETI_APP_SECRET,
  host: process.env.SOKETI_APP_CONTAINER_NAME,
  port: process.env.SOKETI_APP_PORT,
  scheme: "http",
});

const webServer = http.createServer((req, res) => {
  if (req.method === 'POST') {
    let chunks = [];

    req.on("data", (chunk) => chunks.push(chunk));

    req.on("end", () => {
      const requestInput = {};
      const parsedData = new URLSearchParams(
        (Buffer.concat(chunks)).toString()
      );

      for (var pair of parsedData.entries()) {
        requestInput[pair[0]] = pair[1];
      }

      websocketServer.trigger(
        "playground-channel",
        "sample-event",
        {
          message: requestInput.message,
          sessionId: requestInput.sessionId,
        }
      );
    });

    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.end('OK');
  } else {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.end('OK');
  }
});

const hostname = '0.0.0.0';
const port = process.env.SOKETI_SERVER_PORT ?? 8080;

webServer.listen(port, hostname, () => {
  console.log(`Server running at http://localhost:${port}/`);
});
