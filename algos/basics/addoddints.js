//Add odd integers from -300,000 to 300,000, and console.log the final sum. Is there a shortcut?
function addoddints(){
  var count = 0;
  for(var i=-299999;i<=299999;i = i + 2){
    count += 1;
  }
  console.log(count);
}
addoddints();
