myAppModule.controller('orderController', ['$scope', 'productFactory', function ($scope, productFactory){
  $scope.products = [];
  productFactory.index(function(data){
    $scope.products = data;
  })
  $scope.buything = function(product){
    productFactory.buyProduct(product);
  }

}])
