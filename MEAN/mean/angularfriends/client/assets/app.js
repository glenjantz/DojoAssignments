var myApp = angular.module('myApp', ['ngRoute']);
myApp.config(function ($routeProvider){
  $routeProvider
  .when('/new',{
    templateUrl: 'partials/new.html'
  })
  .when('/edit',{
    templateUrl: 'partials/edit.html'
  })
  .otherwise({
    redirectTo: '/new'
  });
});
