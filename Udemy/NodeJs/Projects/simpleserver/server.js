const http = require('http');
const url = require('url');
const path = require('path');
const fs = require('fs');

const mimeTypes = {
	"html": "text/html",
	"jpeg": "image/jpeg",
	"jpg": "image/jpg",
	"png": "image/png",
	"js": "text/javascript",
	"css": "text/css" 
};

http.createServer(function(request, response) {
	var uri = url.parse(request.url).pathname;
	var filename = path.join(process.cwd(), unescape(uri));
	console.log('loading ' + uri);
	var stats;
	try{
		stats = fs.lstatSync(filename);
	} catch (e) {
		response.writeHead(404, {'Content-type': 'text/plain'});
		response.write('404 Not found\n');
		response.end();
		return;
	}

	if (stats.isFile()) {
		var mimeType = mimeTypes[path.extname(filename).split(".").reverse()[0]];
		response.writeHead(200, {'Content-type': mimeType});
		var fileStream = fs.createReadStream(filename);
		fileStream.pipe(response);
	} else if (stats.isDirectory()) {
		response.writeHead(302, {
			'Location': 'index.html'
		});
		response.end();
	} else {
		response.writeHead(500, {'Content-type': 'text/plain'});
		response.write('500 Internal Error\n');
		response.end();
	}
}).listen(3000);


