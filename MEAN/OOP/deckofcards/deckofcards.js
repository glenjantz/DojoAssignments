// Create a Deck object constructor. A deck should have the following functionality:
//
// The Deck should contain the 52 standard cards The Deck should be able to shuffle The Deck should be able to reset The Deck should be able to deal
//  a random card
// Deal should return the card that was dealt and remove it from the deck
// Now create a Player object constructor. A Player should have the following functionality:
//
// The Player should have a name The Player should have a hand The Player should be able to take a card (use the deck.deal method)
//  The Player should be able to discard a card
// Optional:
//
// Create a blackjack game with your deck of cards!
// A deck of card image set can be found here
//
// Or Unicode them Unicode for card images!
//
//
 function deck(){
  // var deckholder = [];
  this.deck = [];

}

deck.prototype.makeDeck = function(){
  var suits = ["hearts",'diamonds',"clubs","spades"];
  var values = [2,3,4,5,6,7,8,9,10,11,12,13,14];
  for(var suit in suits){
    for(var value in values){
      this.deck.push(values[value] + " of " +suits[suit]);
    }
  }
  return this
}
deck.prototype.shuffle = function(){
  for(var i in this.deck){
    var temp = this.deck[i];
    var random = Math.floor(Math.random() * this.deck.length);
    this.deck[i] = this.deck[random];
    this.deck[random] = temp;
  }
  return this
}
deck.prototype.reset = function(){
  this.deck = [];
  var suits = ["hearts",'diamonds',"clubs","spades"];
  var values = ["ace",2,3,4,5,6,7,8,9,10,11,12,13];
  for(var suit in suits){
    for(var value in values){
      this.deck.push(values[value] + " of " +suits[suit]);
    }
  }
  return this
}
deck.prototype.deal = function(){
  return this.deck.pop()
}

 function Player(name){
  this.name = name;
  this.hand = [];

}
Player.prototype.draw = function(deck){
  this.hand.push(deck.deal())
  return this
}
Player.prototype.discard = function(){
  if(this.hand.length > 0){
    return this.hand.pop()
  }
}

var deck1 = new deck()
var me = new Player("glen")
console.log(me.name)
// console.log(deck1.deck)

console.log(me.hand)
deck1.makeDeck()
// deck1.shuffle()
me.draw(deck1)
console.log(me.hand)
console.log(deck1.deck)
me.discard()
console.log(me.hand)

// console.log(deck1.deck)
// deck1.shuffle()
// deck1.reset()
// console.log(deck1.deck)
// deck1.deal()
// console.log(deck1.deal())
// console.log(deck1.deck)
