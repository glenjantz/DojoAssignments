myApp.controller('playersController', ['$scope', 'playerFactory', function ($scope, playerFactory){
  $scope.players = [];
  $scope.newPlayer = {};
  playerFactory.index(function(data){
    $scope.players = data;
  });
  $scope.addPlayer = function(){
    playerFactory.addPlayer($scope.newPlayer);
    $scope.newPlayer = {};
  }
  $scope.deletePlayer = function(object){
    playerFactory.deletePlayer(object);
  }
}]);
