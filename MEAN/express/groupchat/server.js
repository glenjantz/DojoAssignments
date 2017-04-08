var express = require('express');
var app = express();
var path = require('path');
// var count = 0;
var users = [];
var messages = [];
// app.use(express.static(__dirname + "/static"));
app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');
app.get('/', function(req,res){
  res.render('index')
})
var server = app.listen(8000, function(){
  console.log('listening on port 8000')
})

var io = require('socket.io').listen(server);
io.sockets.on('connection', function(socket){
  socket.on('got_a_new_user', function(data){
    // count += 1;
    console.log(socket.id);
    data.id = socket.id;
    users.push({name: data.user, id: data.id});
    messages.push({name: "server", message: data.user + " joined the chat"});
    // console.log(users)
    // io.emit('new_user', {current: data.user, id: data.id})
    io.emit('load', {current: data.user, messages: messages, currentid: data.id, users: users});
  })
  socket.on('new_message', function(data){
    messages.push({name: data.user, message: data.message});
    io.emit('show_new_message', {name: data.user, message: data.message});
  })
  socket.on('disconnect', function(){
    var discuser;
    var userid = socket.id;
    for(var i in users){
      if(users[i].id == socket.id){
        discuser = users[i].name;
        users.splice(i,1);
        break;
      }
    }
    // console.log(discuser)

    messages.push({name: "server", message: discuser + " has disconnected"})
    io.emit('disconnected', {name: "server", message: discuser + " has disconnected", id : userid});
  })
})
