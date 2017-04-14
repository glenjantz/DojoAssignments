
myAppModule.controller('productsController', ['$scope', 'productFactory', function ($scope, productFactory){
  $scope.products = [];
  $scope.newproduct = {};
  productFactory.index(function(data){
    $scope.products = data;
  })
  $scope.create = function(){
    $scope.newproduct.price = parseFloat($scope.newproduct.price)
    $scope.newproduct.qty = 50;
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
