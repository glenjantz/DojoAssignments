//Print all integer multiples of 5, from 512 to 4096. Afterward, also log how many there were.
function mult5(){
  var count = 0;
  for(var i=512;i<=4096;i++){
    if(i % 5 == 0){
      console.log(i)
      count += 1
    };
  };
  console.log(count);
};
mult5();
