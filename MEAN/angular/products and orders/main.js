var myAppModule = angular.module('myApp', []);
myAppModule.factory('productFactory', function(){
  var products = [
    {name: "Keyboard", price: 149.99},
    {name: "Mouse", price: 49.99},
    {name: "Basketball", price: 59.99}
  ];
  var factory = {};
  factory.index = function (callback){
    callback(products);
  }
  factory.addProduct = function (object){
    products.push(object);
  }
  factory.removeProduct = function (object){
    products.splice(products.indexOf(object), 1);
  }
  return factory;
});
myAppModule.controller('productsController', ['$scope', 'productFactory', function ($scope, productFactory){
  $scope.products = [];
  $scope.newproduct = {};
  productFactory.index(function(data){
    $scope.products = data;
  })
  $scope.create = function(){
    $scope.newproduct.price = parseFloat($scope.newproduct.price)
    productFactory.addProduct($scope.newproduct)
    $scope.newproduct = {};
  }
  // $scope.removething = function(index){
  //   productFactory.removeProduct(index);
  // }
  $scope.removething = function(object){
    productFactory.removeProduct(object);
  }
}])
