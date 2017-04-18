myApp.controller('userController', ['$scope','usersFactory', '$location', function($scope, usersFactory, $location) {
  $scope.users = [];  //users to show
  $scope.reg = {};  //don't need this line for ng model
  $scope.log = {};
  $scope.user = {};
  console.log("switching pages....", $scope.user)
// tells the factory to get friends
  var index = function () {
      usersFactory.index(function(data, data2) {
          $scope.users = data;
          $scope.user = data2;
      })
  }
  //invokes index for friends
  index();

  // tells factory to add this user
  $scope.register = function() {
      usersFactory.register($scope.reg, function(data) {
        console.log('made it to register', data)
        if(data.data.errors){
          $scope.errors = data.data.errors;
          console.log("these are the errors", $scope.errors);
          if(typeof $scope.reg.passC === "undefined"){
            $scope.errors.passC = {};
            $scope.errors.passC.message = "passwords must match btich";
          }
          if($scope.reg.passC != $scope.reg.pass){
            $scope.errors.passC.message = "passwords must match";
          }
        }
        if(data.data.errmsg){
          $scope.errors = {};
          $scope.errors.exists = {};
          $scope.errors.exists.message = "email already exists"
          console.log("made it here", $scope.errors);
        }
        if(!data.data.errors && !data.data.errmsg){
          console.log("this is the data.dta" , data.data)
          $scope.user = data.data.errors;
          $scope.newUser = {};  //clear form fields
          $location.url('/users')  //redirect to main page
        }
      });
    }
    $scope.login = function (){

      usersFactory.login($scope.log, function(data){
        console.log(data);
        if (data.data.errors){
          $scope.errors = data.data.errors;
          console.log($scope.errors)
        }else{
          console.log(data);
          $scope.user = data.data;
          console.log("this is the scope user", $scope.user)
          $location.url('/users')
        }
      });
    }
    $scope.logout = function (){
      usersFactory.logout(function(data){
        $scope.user = data;
        $location.url('/')
      })
    }
}]);
