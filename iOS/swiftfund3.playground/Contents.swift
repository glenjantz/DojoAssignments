//: Playground - noun: a place where people can play

import UIKit

var arr = [Int]()
for i in 1...255{
    arr.append(i)
}

var arrlen = arr.count
//var rando = Int(arc4random_uniform(UInt32(arrlen)))
//print (rando)
//var rando2 = Int(arc4random_uniform(UInt32(arrlen)))
//if rando != rando2 {
//    swap(&arr[rando], &arr[rando2])
//}
//print(arr)
//for i in 1...100{
//    var rando = Int(arc4random_uniform(UInt32(arrlen)))
//    var rando2 = Int(arc4random_uniform(UInt32(arrlen)))
//    if rando != rando2 {
//        swap(&arr[rando], &arr[rando2])
//    }
//    print (arr)
//}

for i in 0..<arr.count {
    if(arr[i] == 42){
        arr.remove(at: i)
        print ("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(i)")
        break
    }
}
