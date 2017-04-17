var myApp = angular.module('myApp', ['ngRoute']);
myApp.config(function ($routeProvider){
  $routeProvider
  //index partial #!/
  .when('/', {
    templateUrl: 'partials/main.html',
    controller: 'userController'
  })
  .when('/users', {
    templateUrl: 'partials/users.html',
    controller: 'userController'
  })
  //redirect to index partial
  .otherwise({
    redirectTo: '/'
  });
});
