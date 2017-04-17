
myApp.controller('editController', ['$scope','friendsFactory', '$routeParams', '$location', function($scope, friendsFactory, $routeParams, $location) {
//used to show one friend
  $scope.friend = {};

  //automatically runs to show one specific user
   friendsFactory.show($routeParams.id, function(returnedData){
     $scope.friend = returnedData;
     console.log($scope.friend);
   });
//this line doesn't need to be defined
   $scope.updatedFriend = {};

   //tells the factory to use this id to delete and then redirects after completion
   $scope.update = function(){
     console.log('coming from the edit controller', $scope.updatedFriend)
     var thisone = $routeParams.id;
     console.log('this is the paramater', thisone);
     friendsFactory.update($scope.updatedFriend, thisone, function(data){
       $scope.updatedFriend = {};
       $location.url('/')
    });
   }
}]);
