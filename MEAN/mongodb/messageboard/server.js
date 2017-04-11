//set express and use it
var express = require('express');
var app = express();
//set path
var path = require('path');
//use routes
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
//set bodyparser for forms
var bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended: true}));
//set mongoose and db
var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/messageboard');
mongoose.Promise = global.Promise;
//outline schemas
//Schema for associations
var Schema = mongoose.Schema;
//schema for messages
var MessageSchema = new mongoose.Schema({
  name: {
    type: String,
    required: [true, "Name must be at least 4 characters."],
    minlength: 4},
  message: {
    type: String,
    required: [true, "Message must be at least 4 characters."],
    minlength: 4},
  comments: [{
    type: Schema.Types.ObjectId,
     ref: 'Comment'}]
  },{timestamp: true});
//schema for comments
var CommentSchema = new mongoose.Schema({
  name: {
    type: String,
    required: [true, "Name must be at least 4 characters."],
    minlength: 4},
  comment: {
    type: String,
    required: [true, "Comment must be at least 4 characters."],
    minlength: 4},
  _message: {
    type: Schema.Types.ObjectId,
    ref: "Message"}
  },{timestamp: true});
//set schemas
mongoose.model("Message", MessageSchema);
var Message = mongoose.model("Message");
mongoose.model("Comment", CommentSchema);
var Comment = mongoose.model("Comment");
//use schemas
//set up associations


//render index
// app.get('/', function(req,res){
//   //make form for posting a message
//   //show messages on index
//   Message.find({}, function(err, messages){
//     if(err){
//       console.log('something went wrong finding messages', err);
//     }else{
//       console.log(messages);
//       res.render('index', {messages: messages});
//     }
//   });
//
//   //make form for comments
//   //show comments on index
//   //all with validations
//   // res.render('index');
// });
app.get('/', function(req, res){
  Message.find({}).populate('comments').exec(function(err, messages){
    if(err){
      console.log('something went wrong finding the messages', err);
    }else{
      // console.log(messages);
      res.render('index', {messages: messages});
    }
  });
});

app.post('/add_message', function(req,res){
  var message = new Message({
    name: req.body.name,
    message: req.body.message
  });
  message.save(function(err){
    if(err){
      console.log('somthing went wrong adding the message');
      Message.find({}).populate('comments').exec(function(err, messages){
        if(err){
          console.log('something went wrong finding the messages', err);
        }else{
          // console.log(messages);
          res.render('index', {messages: messages, errors: message.errors});
        }
      });
      // res.render('index', {errors: message.errors});
    }else{
      console.log('successfully added message');
      res.redirect('/');
    }
  });
});
app.post('/add_comment/:id',function(req,res){
  Message.findOne({_id: req.params.id}, function(err, messages){
    if(err){
      console.log('something went wrong finding the message to add the comment to', err);
    }else{
      var comment = new Comment({
        name: req.body.name,
        comment: req.body.comment
      });
      comment._message = messages._id;
      messages.comments.push(comment);
      comment.save(function(err){
        if(err){
          console.log('something went wrong saving the comment', err);
          Message.find({}).populate('comments').exec(function(err, messages){
            if(err){
              console.log('something went wrong finding the messages', err);
            }else{
              // console.log(messages);
              res.render('index', {messages: messages, errors: comment.errors});
            }
          });
          // res.render('index', {errors: comment.errors});
        }else{
          console.log('sucessfully added comment');
          messages.save(function(err){
            if(err){
              console.log('something went wrong saving the comment to the message', err);
            }else{
              console.log('successfully added comment to message');
              res.redirect('/')
            }
          });
        }
      });
    }
  });
});
app.listen(8000, function(){
  console.log('running on port 8000');
});
