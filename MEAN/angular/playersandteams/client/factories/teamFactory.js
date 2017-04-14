myApp.factory('teamFactory', function(){
  var factory = {};
  var teams = [
    {name: "seahawks"},
    {name: "49ers"},
    {name: "honeybadgers"}
  ];
  factory.index = function(callback){
    callback(teams);
  }
  factory.addTeam = function (object){
    teams.push(object);
  }
  factory.deleteTeam = function(object){
    teams.splice(teams.indexOf(object),1)
  }
  return factory;
});
