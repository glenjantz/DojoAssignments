console.log("future routes");
////require the friends controller
var users = require('../controllers/users');
//have routes call the properc friends db methods
module.exports = function(app){
  //this line doesn't need to exist
  app.get('/', function(req, res) {
    res.render('index')
  });
  //retrieve all friends
  app.get('/users', users.index);
  //create one friends
  app.post('/users', users.register);
  //update one friend by id
  // app.put('/friends/:id', users.update);
  //show one friend by id
  // app.get('/friends/:id', users.show)
  //delete one friend by id
  // app.delete('/friends/:id', users.deleted)
};
