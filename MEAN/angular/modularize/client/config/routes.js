/* our angular app modularize, with config */
var app = angular.module('app', ['ngRoute']);
/* configuration for angular route */
app.config(function($routeProvider) {
  $routeProvider
    .when('/index', {
      templateUrl: 'static/partials/index.html',
      controller: 'indexController'
    })
    .when('/edit/:id', {
      templateUrl: 'static/partials/edit.html',
      controller: 'editController',
      controllerAs: 'eC'
    })
    .when('/new', {
      templateUrl: 'static/partials/new.html',
      controller: 'newController',
    })
    .otherwise({
      redirectTo: '/index'
    });
});
