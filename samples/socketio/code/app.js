const http = require('http');
const fs = require('fs');
const { Server } = require('socket.io');

const routeMap = {
  '/': 'index.html'
};

const server = http.createServer((req, res) => {
  if (routeMap[req.url]) {
    fs.readFile(routeMap[req.url], (error, data) => {
      res.statusCode = 200;
      res.setHeader('Content-Type', 'text/html');
      res.write(data);
      res.end();
    })
  } else {
    res.statusCode = 404;
    res.setHeader('Content-Type', 'text/plain');
    res.end('Sorry, page not found.');
  }
});

const io = new Server(server);

io.on('connection', (socket) => {
  socket.on('submit-event', event => {
    io.emit('broadcast-event', event);
  });
});

const hostname = '0.0.0.0';
const port = 80;

server.listen(port, hostname, () => {
  console.log(`Server running at http://localhost:${port}/`);
});
