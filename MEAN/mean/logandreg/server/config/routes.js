console.log("future routes");
////require the friends controller
var users = require('../controllers/users');
//have routes call the properc friends db methods
module.exports = function(app){
  //this line doesn't need to exist
  app.get('/', function(req, res) {
    res.render('index')
  });
  //retrieve all users
  app.get('/users', users.index);
  //create one user
  app.post('/users', users.register);
  //validate user login
  app.post('/login', users.login);
};
