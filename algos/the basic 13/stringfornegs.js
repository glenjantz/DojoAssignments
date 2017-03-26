//Given an array of numbers, replace any negative values with the string 'Dojo'.
function swapnegs(arr){
  for(var i=0;i<arr.length;i++){
    if(arr[i] < 0){
      arr[i] = "Dojo"
    }
  }
  console.log(arr)
}
swapnegs([1,2,3,-1,-2,-3])
