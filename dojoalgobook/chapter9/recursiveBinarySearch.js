//pg 103
//given a sorted array and a value, recursively determine whether value is found within array.
function rBS(arr,num){
  var mid = Math.floor(arr.length/2)
  var newarr = arr;
  if(arr[mid] < num){     //check if the num is on the right side of the arr
    newarr = arr.slice(mid+1,arr.length);  //slice array and re run the func
    return rBS(newarr,num)
  }
  else if(arr[mid] > num){   //check if the num is on the left side of arr
    newarr = arr.slice(0,mid);  //slice array and re run the func
    return rBS(newarr, num)
  }
  else{
    if(arr[mid] == num){     //check for the value
      return true
    }else{
      return false
    }
  }
}
console.log(rBS([1,2,3,4],5))
