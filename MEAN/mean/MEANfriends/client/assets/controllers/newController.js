myApp.controller('newController', ['$scope','friendsFactory', '$location', function($scope, friendsFactory, $location) {
  $scope.friends = [];  //friends to show
  $scope.newFriend = {};  //don't need this line for ng model

//tells the factory to get friends
  var index = function () {
      friendsFactory.index(function(data) {
          console.log(data);
          $scope.friends = data;
      })
  }
  //invokes index for friends
  index();

  //tells factory to add this user
  $scope.create = function() {
      friendsFactory.create($scope.newFriend, function(data) {

          // $scope.friends.push(data); //this is no longer needed since we redirect it was used to temporarily update the friend array after creation
          $scope.newFriend = {};  //clear form fields
          $location.url('/')  //redirect to main page
      });
  }
  //tells factory to delete this user and then deletes from the scope
  $scope.delete = function(id, friend){
    friendsFactory.deletethis(id, function(data){
      //this line deletes the friend from the temp array friends but he is already out of the db
      $scope.friends.splice($scope.friends.indexOf(friend),1)
    });
  }
}]);
