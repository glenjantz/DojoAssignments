
var arr = ["Hello","goodbye","oscar"];

var articleBox = document.getElementById("article-box");
articleBox.draggable=true;
articleBox.

//articlebox.onclick = function(){
//  console.log("hello again");
//  alert("hello")}


for(var i=0;i<arr.length;i++){
 var title ="<p class = 'article'>" + i + ". " + arr[i] + "<p>";
 articleBox.innerHTML += title;
}

var articles = document.getElementsByClassName('article')
for (var j= 0; j<articles.length; j++){
  articles[j].onclick = function(){
    this.innerHTML = "you JUST CLICKEDME!";
  }
}
