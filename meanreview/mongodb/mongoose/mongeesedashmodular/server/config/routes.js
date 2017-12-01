var rabbits = require('../controller/rabbits.js')
module.exports = function(app){
  app.get('/', function(req,res){
    rabbits.show(req, res)
  });
  app.get('/mongooses/new', function(req,res){
    res.render('new');
  });
  app.get('/mongooses/:id', function(req, res){
    rabbits.showthisone(req, res);
  });
  app.post('/mongooses', function(req,res){
    rabbits.create(req, res);
  });
  app.get('/mongooses/edit/:id', function(req,res){
    rabbits.editthisone(req, res);
  });
  app.post('/mongooses/:id', function(req,res){
    rabbits.updatethisone(req, res);
  });
  app.post('/mongooses/destroy/:id', function(req,res){
    rabbits.removethisone(req, res);
  });
}
