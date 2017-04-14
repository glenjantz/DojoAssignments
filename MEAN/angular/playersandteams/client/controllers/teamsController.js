myApp.controller('teamsController', ['$scope', 'teamFactory', function ($scope, teamFactory){
  $scope.teams = [];
  $scope.newTeam = {};
  teamFactory.index(function(data){
    $scope.teams = data;
  });
  $scope.addTeam = function(){
    teamFactory.addTeam($scope.newTeam);
    $scope.newTeam = {};
  }
  $scope.deleteTeam = function(object){
    teamFactory.deleteTeam(object);
  }
}]);
