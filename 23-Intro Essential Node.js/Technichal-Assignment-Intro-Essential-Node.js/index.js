const http = require("http");
const host = "localhost";
const port = 3000;

const requestListener = function (req, res) {
  switch (req.url) {
    case "/about":
      res.writeHead(200);
      res.write("Welcome to about us page");
      res.end();
      break;
    case "/contact":
      res.writeHead(200);
      res.write("Welcome to contact us page");
      res.end();
      break;
    default:
      res.writeHead(404);
      res.write("hello world");
      res.end();
  }
};

const server = http.createServer(requestListener);
server.listen(port, host, () => {
  console.log(`Server is running on http://${host}:${port}`);
});