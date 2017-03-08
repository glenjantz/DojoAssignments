//: Playground - noun: a place where people can play

import UIKit

class Animal{
    var name: String
    var health: Int
    init(name:String) {
        self.name = name
      self.health = 100
    }
    func displayhealth(){
        print("\(name) Health: \(health)")
    }
}
class Cat: Animal{
    func growl(){
        print ("rawwwwr")
    }
    override init(name: String){
         super.init(name: name)
//         self.health = 150
    }
    func run(){
        print("running")
        self.health -= 10
    }
}


class Lion: Cat{
    override func growl(){
    print("ROAR!!! i am the king of the jungle")
    }
    override init(name:String){
        super.init(name:name)
        self.health = 200
    }
}
class Cheetah: Cat{
    override func run(){
        print("Running FAST")
        self.health-=50
    }
    override init(name:String){
        super.init(name:name)
        self.health = 200
}
    func sleep(){
        self.health += 50
        if self.health > 200{
            self.health = 200
        }
    }
    
}

var s = Cheetah(name:"Glen")
var q = Cheetah(name:"CAR")
q.run()
s.displayhealth()
s.growl()
q.displayhealth()
