console.log('Users Factory');
myApp.factory('usersFactory', ['$http', function($http) {
  var factory = {}; //sets factory object
  var users = [];  //this array gets populated from the db
  factory.user = {};

  //index populates the friends array from the db then sends to the controller
  factory.index = function(callback) {
      $http.get('/users').then(function(returned_data){
        // console.log(returned_data.data);
        users = returned_data.data;
        console.log('this is the factory user', factory.user);
        callback(users, factory.user);
      });
  }

  //adds a single user to the db and then returns it to the controller this callback does nothing with the data passed
  factory.register = function(newuser, callback) {
      $http.post('/users', newuser).then(function(returned_data){
        console.log('this is the returned data', returned_data);
        if (typeof(callback) == 'function'){
          callback(returned_data);
        }
      });
  }
  factory.login = function (user, callback){
    $http.post('/login', user).then(function(returned_data){
       factory.user = returned_data.data;
      console.log('this is the returned data', returned_data);
      console.log('this is the user', user)
      if (typeof(callback) == 'function'){
        callback(returned_data);
      }
    })
  }
  factory.logout = function(callback){
    factory.user = {};
    if (typeof(callback) == 'function'){
      callback(factory.user);
    }
  }
  return factory;
}]);
