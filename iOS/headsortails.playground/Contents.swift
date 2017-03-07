//: Playground - noun: a place where people can play

import UIKit

func tossCoin()->String{
    print("Tossing a Coin")
    let arr = ["heads","tails"]
    let rando = Int(arc4random_uniform(UInt32(2)))
    return ("\(arr[rando])")
}
//print(tossCoin())

//func tossCoin() -> String {
//    let coin = Int(arc4random_uniform(UInt32(2)))
//    
//    if coin == 0 {
//        return "Heads"
//    }else {
//        return "Tails"
//    }
//    
//}
//print(tossCoin())
//
func tossMultipleCoins(Numtosses: Int) -> Double {
    var heads = 0
    var tails = 0
    for _ in 1...Numtosses{
        if tossCoin() == "heads"{
            heads+=1
    }
        else{
            tails+=1
        }
    }
//    return Double("\(Numtosses).\(heads)")!
    return Double(Numtosses)/Double(heads)
}
print(tossMultipleCoins(Numtosses: 10))
//tossMultipleCoins(Numtosses: 3)

