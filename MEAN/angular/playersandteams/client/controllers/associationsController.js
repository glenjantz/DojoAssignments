myApp.controller('associationsController', ['$scope', 'playerFactory','teamFactory', function ($scope, playerFactory, teamFactory){
  $scope.players = [];
  $scope.teams = [];
  $scope.newPlayer = {};
  playerFactory.index(function(data){
    $scope.players = data;
  });
  teamFactory.index(function(data){
    $scope.teams = data;
  });
  $scope.removeTeam = function(object){
    playerFactory.removeTeam(object);
  }
  $scope.addAssociation = function(playerData, teamData){
    playerFactory.addTeam(playerData, teamData);
  }
}]);
