//: Playground - noun: a place where people can play

import UIKit

//func sayHello(name: String = "buddy") {
//    print("Hey \(name)")
//}
//// We can call it without providing any arguments and the default value will be used...
//sayHello()
//// ...or we can call it with an argument and that argument's value will be used
//sayHello(name: "Yoda")

//func sayHello(name: String = "buddy") -> String {
//    return "Hey \(name)"
//}
//var greeting: String?
//greeting = sayHello()
//print(greeting)

//func calculateAreaOfRectangleWithWidth(w: Int, andHeight h: Int) -> Int {
//    return w * h
//}
//var area = calculateAreaOfRectangleWithWidth(w: 10, andHeight: 3)
//print(area)

//var myInt = 1
//func changeMyInt(someInt: inout Int) {         // must specify "inout"
//    someInt = someInt + 1
//    print(someInt)
//}
//changeMyInt(someInt: &myInt)                            // must pass in the variable with "&" symbol
//print(myInt)

//var myInt = 1
//func changeMyInt(someInt: Int) {
//    var someInt = someInt
//    someInt = someInt + 1
//    print(someInt)
//}
//changeMyInt(someInt: myInt)     // => 2
//print(myInt)

//func lookForSomethingIn(dictionary: [String: Int], forKey key: String) -> Int? {
//    if let value = dictionary[key] {
//        return value
//    } else {
//        return nil
//    }
//}
//var jerseyNumber = lookForSomethingIn(dictionary: jerseynumbers, forKey: "Kobe")
//if let num = jerseyNumber {
//    print(num)
//}
//
//func findMinOf(arr: [Int]) -> Int? {
//    if arr.count > 0 {
//        var min = arr[0]
//        for num in arr {
//            if num < min {
//                min = num
//            }
//        }
//        return min
//    } else {
//        return nil
//    }
//}
//
//print(findMinOf(arr: [1]) ?? 9)


//class Person {
//    var species = "H. Sapiens"
//}
//var myPerson: Person = Person()
//print("\(myPerson.species)")

//
//class Person {
//    var species = "H. Sapiens"
//}
//var myPerson = Person()
//myPerson.species = "Homo Sapiens"
//print (myPerson.species)

//class Person {
//    var species = "H. Sapiens"
//    func speak() {
//        print("Hello! I am a \(self.species)")   // Note how we refer to the properties using "self"
//    }
//}
//var myPerson: Person = Person()
//myPerson.speak()

//class User {
//    var intelligence = 0
//    func studyForTopic(topic: String, hours: Int) {
//        print("I am studying \(topic) for \(hours) hours")
//    }
//}
//var user = User()
//user.studyForTopic(topic: "Math", hours: 12)
//
//class Person {
//    var species = "H. Sapiens"
//    var name: String
//    init(name: String) {   // Note this function doesn't get called explicitly. It is called
//        // when creating an instance using initialization syntax -- "Person()".
//        self.name = name     // Note use of "self" here to refer to the name property.
//    }
//    func speak() {
//        print("Hello! I am a \(self.species) and my name is \(self.name)")
//        // Note how we refer to the properties using "self".
//    }
//}
//var myPerson: Person = Person(name: "Jay")   // Now we have to pass a param to Person initialization.
//myPerson.speak()

//class Person {
//    var fullName: String
//    init(name: String) {
//        self.fullName = name
//    }
//    func introduce() {
//        print("Hi my name is \(self.fullName)")
//    }
//}
//var j = Person(name: "Ketul Patel") // Initialize a Person object and assign it to the j variable
//var k = j                           // Create a k variable and set its value to be the j variable
//// (remember classes are reference types)
//j.introduce()                       // Prints "Hi my name is Ketul Patel"
//k.fullName = "Ketul J Patel"        // We are changing the name through the k variable.
//j.introduce()                       // Prints "Hi my name is Ketul J Patel" since both
//k.introduce()


//struct Rectangle {
//    var width: Int
//    var height: Int
//}
//var square1 = Rectangle(width: 10, height: 10)
//var square2 = square1                         // Here the val inside square 1 (an instance of Rectangle)
//// is copied and passed rather than just pointed to.
//print("square1's width: \(square1.width), square2's width \(square2.width)")
//// They are the same because square2 is a copy of square1
//square2.width = 20                            // This only changes square2 because there are
//// 2 separate instances of rectangle in memory
//square2.height = 20
//print("square1's width: \(square1.width), square2's width \(square2.width)")
//// They are different now: changing square2 changed a
//// completely separate instance from square1.

class Person {
    var species = "H. Sapiens"
    var name: String
    init(name: String) {         // Note: this function doesn't get called explicitly.  It is called
        // when creating an instance using the initialization syntax -- "Person()"
        self.name = name           // Note the use of "self" here to refer to the name property
    }
    func speak() {
        print("Hello! I am a \(self.species) and my name is \(self.name)")
        // Note how we refer to the properties using "self"
    }
}
//class Developer: Person {      // Note how we are specifying that Developer will inherit from Person
//    var favoriteLanguage: String
//    init(name: String, favoriteLanguage: String) {
//        self.favoriteLanguage = favoriteLanguage
//        super.init(name: name)
//    }
//    override func speak() {
//        print("Hello! I am a Developer! My name is \(self.name) \(self.species)")
//    }
//}
//var myDeveloper: Developer = Developer(name: "Jay", favoriteLanguage: "Swift")
//myDeveloper.speak()
//var myPerson: Person = Person(name: "Jayy")
//myPerson.speak()

class Developer: Person {         // Here we specify that Person is the "Superclass"
    // Developer definition here
    var favoriteLanguage: String       // Declaring the favoriteLanguage property in Developer means that
    // it is only available in Developer and Developer's subclasses.
    
    init(name: String, favoriteLanguage: String) {           // Developer's init method takes in
        // a name and a favoriteLanguage.
        self.favoriteLanguage = favoriteLanguage               // We set the favoriteLanguage property.
        // We then call the superclass' init method and pass it the name
        super.init(name: name)           // property since the logic is already written in Person's init.
   
        }
    override func speak() {                    // We specify that we are overriding the speak function.
        print("Hello! I am a Developer! My name is \(self.name)")
    }
}

var myDeveloper: Developer = Developer(name: "Jay", favoriteLanguage: "Swift")
myDeveloper.speak()