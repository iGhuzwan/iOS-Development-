//: Playground - noun: a place where people can play

import UIKit
var str = "Hello, playground"
var prime = [7,11,13,17,19,23]
var even = [10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200]
var odd = [9,18,27,36,45,54,63,72,81,90,99,108,117,126,135,144,153,162,171,180]
var random : Int
var random2 : Int
for index in 0...19
{
random = even.removeFirst() % 19
random2 = odd.removeFirst() % 19
print("Index :",index,"RandomOne :",random," RandomTwo :",random2)
}
