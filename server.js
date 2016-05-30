/**
 * Created by giahoangnguyen on 5/30/16.
 */
'use strict';


var express = require('express');

// Constants
var PORT = 200;

// App
var app = express();
app.get('/', function (req, res) {
    res.send('Hello world\n');
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);

/*var http = require('http');
http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('Welcome Node.js');
}).listen(200);
console.log('Server running at http://localhost:200/');*/
