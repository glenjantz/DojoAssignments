//Build function that accepts array. Return a new array with all values except first, adding 7 to each. Do not alter the original array.
function addseventomost(arr){
  newarr = [];
    for (var i = 0; i < arr.length; i++) {
        if(i == 0){
          newarr.push(arr[i]);
        }
        else{
          newarr.push(arr[i] + 7);
        }
      }
      return newarr
    }
console.log(addseventomost([1,2,3,4,5,6]));
console.log(addseventomost([]));
