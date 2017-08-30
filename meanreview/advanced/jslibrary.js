var _ = {
   map: function(arr, callback) {
       var array = [];
       for(var i = 0; i < arr.length; i++) {
           array.push(callback(arr[i]));
       }
       return array;
   },
   reduce: function(arr, callback, memo) {
     var current = memo;
     for (var i = 0; i < arr.length; i++) {
         current = callback(current, arr[i]);
     }
     return current;
   },
   find: function(arr, callback) {
       for(var i = 0; i < arr.length; i++) {
           if (callback(arr[i]) == true) {
               return(arr[i]);
           };
       }
   },
   filter: function(arr, callback) {
     var array = [];
     for(var i = 0; i < arr.length; i++) {
         if (callback(arr[i]) == true) {
             array.push(arr[i]);
         };
     }
     return array;
   },
   reject: function(arr, callback) {
       var array = [];
       for(var i = 0; i < arr.length; i++) {
           if (callback(arr[i]) == false) {
               array.push(arr[i]);
           };
       }
       return array;
   }
 }
// you just created a library with 5 methods!

// var multi = _.map([1,2,3,4,5], function(num){ return num * 3})
// console.log(multi)
// var addall = _.reduce([1, 2, 3, 4, 5, 6], function(memo, num){ return num + memo; }, 10);
// console.log(addall)
// var findfirst = _.find([1, 2, 3, 4, 5, 6], function(num){ return num % 2 == 0; });
// console.log(findfirst);
// var findall = _.filter([1, 2, 3, 4, 5, 6], function(num){ return num % 2 == 0; });
// console.log(findall); // if things are working right, this will return [2,4,6].
// var findfalse = _.reject([1, 2, 3, 4, 5, 6], function(num){ return num % 2 == 0; });
// console.log(findfalse); // if things are working right, this will return [2,4,6].
