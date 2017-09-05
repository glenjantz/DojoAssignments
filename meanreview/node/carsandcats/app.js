var http = require('http');
var fs = require('fs');

var server = http.createServer(function (request, response){

  if(request.url === '/cars') {
      fs.readFile('views/cars.html', 'utf8', function (errors, contents){
        if(errors){
          console.log(errors);
        }
          response.writeHead(200, {'Content-Type': 'text/html'});  // send data about response
          response.write(contents);  //  send response body
          response.end(); // finished!
      });
  }
  else if(request.url ==='/images/car1.jpg'){
    //NO UTF 8 FOR IMAGES
    fs.readFile('images/car1.jpg',function (errors, contents){
      if(errors){
        console.log(errors);
      }
      response.writeHead(200, {'Content-Type': 'image/jpg'});
      response.write(contents);
      response.end();

    });
  }
  else if(request.url ==='/images/cat1.jpg'){
    //NO UTF 8 FOR IMAGES
    fs.readFile('images/cat1.jpg',function (errors, contents){
      if(errors){
        console.log(errors);
      }
      response.writeHead(200, {'Content-Type': 'image/jpg'});
      response.write(contents);
      response.end();

    });
  }
  else if(request.url ==='/images/cat2.jpg'){
    //NO UTF 8 FOR IMAGES
    fs.readFile('images/cat2.jpg',function (errors, contents){
      if(errors){
        console.log(errors);
      }
      response.writeHead(200, {'Content-Type': 'image/jpg'});
      response.write(contents);
      response.end();

    })
  }
  else if(request.url ==='/stylesheets/cars.css'){
    fs.readFile('stylesheets/cars.css','utf8',function (errors, contents){
      if(errors){
        console.log(errors);
      }
      response.writeHead(200, {'Content-Type': 'text/css'});
      response.write(contents);
      response.end();

    });
  }
  else if(request.url === '/cats'){
    fs.readFile('views/cats.html','utf8',function (errors, contents){
      if(errors){
        console.log(errors);
      }
      response.writeHead(200, {'Content-Type': 'text/html'});
      response.write(contents);
      response.end();

    });
  }
  else if(request.url ==='/stylesheets/cats.css'){
    fs.readFile('stylesheets/cats.css','utf8',function (errors, contents){
      if(errors){
        console.log(errors);
      }
      response.writeHead(200, {'Content-Type': 'text/css'});
      response.write(contents);
      response.end();

    });
  }
  else if(request.url === '/cars/new'){
    fs.readFile('views/addcar.html','utf8',function (errors, contents){
      if(errors){
        console.log(errors);
      }
      response.writeHead(200, {'Content-Type': 'text/html'});
      response.write(contents);
      response.end();
    });
  }
  else{
    response.writeHead(404);
    response.end("File not found!!!")
  }
});

server.listen(7077);
console.log("Running in localhost at port 7077");
