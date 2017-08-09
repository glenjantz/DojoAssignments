// Create a function that can take a start point, end point, and skip amount, to print all numbers in the range.
// For example:
// printRange(2, 10, 2);
// Copy
// Would print
// 2
// 4
// 6
// 8
// (Should go UP TO, but NOT INCLUDING the end point)
// Bonus (Only If You Have Time):
// Make sure it works for negative numbers
// If the user doesn't pass a skip amount, make it default to 1 (printRange(4, 8); would print 4, 5, 6, 7)
// If the user doesn't pass an end point, make it start at 0, and end at the first (printRange(4); would print 0, 1, 2, 3)
function rangePrint(start,end,skip = 1){
  if(end === undefined){
    end = start;
    start = 0;
  }
  for(var i=start;i<end;i= i+skip){
    console.log(i)
  }
}
rangePrint(4)
// rangePrint(-2,10,2)
// rangePrint(2,10,2)
// rangePrint(2,10)
