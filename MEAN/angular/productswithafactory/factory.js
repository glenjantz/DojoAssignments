var myAppModule = angular.module('myApp', []);
myAppModule.factory('productFactory', function(){
  var products = [
    {name: "Keyboard", price: 149.99, qty: 25},
    {name: "Mouse", price: 49.99, qty: 34},
    {name: "Basketball", price: 59.99, qty: 24}
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
  factory.buyProduct = function (product){
    if(product.qty > 0){
      product.qty -= 1;
    }
  }
  return factory;
});
