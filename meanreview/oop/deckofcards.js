function Card(suit,value){
  this.suit = suit;
  this.value = value;
}
function Deck(){
  this.deck = [];
}
Deck.prototype.makeDeck = function(){
  var suits = ["spades","clubs","diamonds","hearts"]
  var values = [2,3,4,5,6,7,8,9,10,11,12,13,14]
  for(var i =0;i<suits.length;i++){
    for(var z=0;z<values.length;z++){
      var card = new Card(suits[i],values[z])
      this.deck.push(card)
    }
  }
  console.log(`this is how big the deck is ${this.deck.length}`)
  return this
}
Deck.prototype.shuffle = function(){
  console.log("shuffling....")
  for(var times =0;times < 2;times++){
    for(var i = 0;i<this.deck.length;i++){
      var rand = Math.floor(Math.random()* 52)
      var temp = this.deck[i];
      this.deck[i] = this.deck[rand];
      this.deck[rand] = temp;
    }
  }
  return this
}
Deck.prototype.showDeck = function(){
  for(var i = 0;i<this.deck.length;i++){
    console.log(this.deck[i])
  }
  return this
}
Deck.prototype.reset = function(){
  this.deck = [];
  this.makeDeck();
  return this
}
Deck.prototype.deal = function(){
  console.log('dealing this card', this.deck[this.deck.length-1])
  return this.deck.pop()
}

function Player(name){
  this.name = name;
  this.hand = [];
}
Player.prototype.takeCard = function(deck){
  this.hand.push(deck.deal())
  return this
}
Player.prototype.show = function(){
  console.log("this is my name ", this.name, "and this is my hand ", this.hand)
  return this
}
Player.prototype.discard = function(){
  var removedCard = this.hand.splice(0, 1)[0];
  console.log(`Removed ${removedCard.value} of ${removedCard.suit} from hand`);
  return this;
}

var deck1 = new Deck()
deck1.makeDeck().showDeck().shuffle().showDeck().reset().showDeck()
var player1 = new Player("glen")
player1.takeCard(deck1)
player1.show().discard()
