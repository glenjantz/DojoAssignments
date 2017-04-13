
var owls = require('../controllers/owls')
module.exports = function(app){
  //show all owls
  app.get('/', function(req,res){
    owls.show(req, res)
  });
  //render add a new owl
  app.get('/mongooses/new', function(req,res){
    res.render('new');
  });
  //render individual owl
  app.get('/mongooses/:id', function(req, res){
    owls.showthisone(req, res);
  });
  //handle post data for adding a new owl
  app.post('/mongooses', function(req,res){
    owls.create(req, res);
  });
  //render edit an existing owl
  app.get('/mongooses/edit/:id', function(req,res){
    owls.editthisone(req, res);
  });
  //handle post data for editing an owl
  app.post('/mongooses/:id', function(req,res){
    owls.updatethisone(req, res);
  });
  //delete an owl by id
  app.post('/mongooses/destroy/:id', function(req,res){
    owls.removethisone(req, res);
  });
}
