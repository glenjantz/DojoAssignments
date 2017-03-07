//: Playground - noun: a place where people can play

import UIKit

struct Card {
    var value: String?
    var suit: String?
    var num: Int
    func show(){
        if let val = self.value, let su = self.suit{
        print ("\(val) of \(su)")
        }
    }
}

class Deck {
    var cards = [Card]()
    init(){
        self.reset()
    }
    func show(){
        for card in self.cards {
            card.show()
        }
    }
    func deal()-> Card?{
        if self.cards.count > 0{
          return self.cards.remove(at: 0)
        }
        else{
            return nil
        }
    }
    func reset() {
        let values = ["a","2","3","4","5","6","7","8","9","10","j","q","k"]
        let suits = ["♣️","♠️","❤️","♦️"]
        for suit in suits{
            for index in 0...12{
                self.cards.append(Card(value:values[index],suit:suit, num:index+1))
            }
        }
    }
    func shuffle(){
        for i in 0..<self.cards.count{
            let random = Int(arc4random_uniform(52))
            let temp = self.cards[i]
            self.cards[i] = self.cards[random]
            self.cards[random] = temp
        }
    }
}

class Player {
    var name: String
    var hand = [Card]()
    init(name: String){
        self.name = name
    }
    func draw(deck: Deck) -> Card?{
        if let newCard = deck.deal() {
            self.hand.append(newCard)
            return newCard
        }
        else {
            return nil
        }
    }
    func show() {
        for card in self.hand {
            card.show()
        }
    }
    func discard(suit:String, value:String) -> Bool {
        for i in 0..<self.hand.count {
            if self.hand[i].value == value && self.hand[i].suit == suit {
                self.hand.remove(at: i)
                return true
            }
        }
        return false
    }
}
var myDeck = Deck()
myDeck.shuffle()
//myDeck.show()
var myPlaya = Player(name: "test")
for _ in 1...5 {
    myPlaya.draw(deck: myDeck)
}
myPlaya.show()
print (myPlaya.discard(suit: "♣️", value: "8"))