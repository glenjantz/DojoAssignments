console.log('Friends Factory');
myApp.factory('friendsFactory', ['$http', function($http) {
  var factory = {}; //sets factory object
  var friends = [];  //this array gets populated from the db
  var friend = {};

  //index populates the friends array from the db then sends to the controller
  factory.index = function(callback) {

      $http.get('/friends').then(function(returned_data){
        console.log(returned_data.data);
        friends = returned_data.data;
        callback(friends);
      });
  }

  //show finds the single user in the db and returns it to the controller
  factory.show = function(id, callback) {
      $http.get('/friends/'+id).then(function(returned_data){
        if (typeof(callback) == 'function'){
          callback(returned_data.data);
        }
      });
  }
  //adds a single user to the db and then returns it to the controller this callback does nothing with the data passed
  factory.create = function(newfriend, callback) {
      $http.post('/friends', newfriend).then(function(returned_data){
        console.log('this is the returned data', returned_data.data);
        if (typeof(callback) == 'function'){
          callback(returned_data.data);
        }
      });
  }
  //finds one user with the id and updates the specified fields and returns the user to the controller this callback does nothing with the returned data
  factory.update = function(updatefriend, id, callback) {
    console.log('this is my friend', updatefriend);
    $http.put('/friends/' + id,{name: updatefriend.name}).then(function(returned_data) {
        console.log(returned_data.data);
        if (typeof(callback) == 'function'){
          callback(returned_data.data);
        }
    });
  }
  //deletes one user from the db with the matching id
  factory.deletethis = function(id, callback) {
    $http.delete('/friends/'+ id).then(function(returned_data){
      if (typeof(callback) == 'function'){
        callback();
      }
    });

  }
  return factory;
}]);
