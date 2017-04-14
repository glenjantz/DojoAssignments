var myApp = angular.module('myApp', ['ngRoute']);
myApp.factory('playerFactory', function(){
  var factory = {};
  var players = [
    {name: "Glen", team: 'seahawks'},
    {name: "Urian", team: "49ers"},
    {name: "Car", team: 'honeybadgers'}
  ];
  factory.index = function(callback){
    callback(players);
  }
  factory.addPlayer = function (object){
    players.push(object);
  }
  factory.deletePlayer = function(object){
    players.splice(players.indexOf(object),1)
  }
  factory.removeTeam = function(object){
    object.team = "";
  }
  factory.addTeam = function(playerData, teamData){
    // console.log(playerData, teamData)
    playerData.team = teamData.name;
  }
  return factory;
});
