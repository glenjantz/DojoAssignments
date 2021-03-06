// Require the Express Module
var express = require('express');
// Create an Express App
var app = express();
//Reguire the mongoose Module
var mongoose = require('mongoose');
//Connect to mongodb
mongoose.connect('mongodb://localhost/basic_mongoose');
//make a Schema for users collection

var UserSchema = new mongoose.Schema({
 name: String,
 age: Number
})
mongoose.model('User', UserSchema); // We are setting this Schema in our Models as 'User'
var User = mongoose.model('User') // We are retrieving this Schema from our Models, named 'User'
// console.log(User)

// Require body-parser (to receive post data from clients)
var bodyParser = require('body-parser');
// Integrate body-parser with our App
app.use(bodyParser.urlencoded({ extended: true }));
// Require path
var path = require('path');
// Setting our Static Folder Directory
app.use(express.static(path.join(__dirname, './static')));
// Setting our Views Folder Directory
app.set('views', path.join(__dirname, './views'));
// Setting our View Engine set to EJS
app.set('view engine', 'ejs');
// Routes
// Root Request
var userdata = {};
app.get('/', function(req, res) {
  User.find({}, function(err, users) {
    if(err) {
      console.log('something went wrong');
    } else { // else console.log that we did well and then redirect to the root route
      console.log('successfully found users!', users);
      userdata = users;
      // res.render('index', {users: users})
    }

  // This is the method that finds all of the users from the database
  // Notice how the first parameter is the options for what to find and the second is the
  //   callback function that has an error (if any) and all of the users
  // Keep in mind that everything you want to do AFTER you get the users from the database must
  //   happen inside of this callback for it to be synchronous
  // Make sure you handle the case when there is an error, as well as the case when there is no error
})
    // res.render('index');
    res.render('index', {userdata: userdata});
})
// Add User Request
app.post('/users', function(req, res) {
    console.log("POST DATA", req.body);
    // This is where we will retrieve the users from the database and include them in the view page we will be rendering.
    var user = new User({
      name: req.body.name,
      age: req.body.age
    })
  user.save(function(err) {
  // if there is an error console.log that something went wrong!
    if(err) {
      console.log('something went wrong');
    } else { // else console.log that we did well and then redirect to the root route
      console.log('successfully added a user!');
      res.redirect('/');
    }
  })
})
// Setting our Server to Listen on Port: 8000
app.listen(8000, function() {
    console.log("listening on port 8000");
})
