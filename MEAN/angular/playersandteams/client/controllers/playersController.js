myApp.controller('playersController', ['$scope', 'playerFactory', '$routeParams', function ($scope, playerFactory, $routeParams){
  console.log($routeParams)
  $scope.players = [];
  $scope.team = {};
  $scope.errors = [];
  $scope.newPlayer = {};
  playerFactory.index(function(data){
    // if($routeParams.teamname.length > 0){
      if(typeof($routeParams.teamname) != 'undefined'){
      $scope.players = data.filter(function(player){
        return player.team === $routeParams.teamname;
      });
    }else{
      console.log('hi');
      $scope.players = data;
    }

  });

  $scope.addPlayer = function(){
    if($scope.newPlayer.name.length >= 4){
      playerFactory.addPlayer($scope.newPlayer);
      $scope.newPlayer = {};
      $scope.errors = [];
    }else{
      $scope.errors = ["name is too short"];
    }
  }

  $scope.deletePlayer = function(object){
    playerFactory.deletePlayer(object);
  }

}]);
