// Playground - noun: a place where people can play

import UIKit

import CoreGraphics

var str = "Hello, Atlanta"

let s1:String = "Hello World"

s1

var s2:String = "Gotta go walk the dogs!"

s2 = "Back from walking the dogs"

s2


var r2 = 4.876

var house = "The big yellow house 4th from the end"

var num6 = 3

num6
house
r2


let percentage = "\u{2744}"

var s:String?

s = "ABC"

s!

if let myString = s{"The value of s is "
                        myString
}else{
    "no value in s"
}

let e = (6,7,8)

var i1 = 5

++i1

i1*=2


var a3 = ["Apples", "Oranges", "Bananas"]

a3.insert("Grapes", atIndex: 1)

a3.append("Kiwi")

a3[2] = "Carrots"

a3


var names: [String] = ["Jim","Sue","Ted"]

names += ["Tom","Sam"]

var info = ["name":"Jo","Age":31,"books":"Monster"]


var num: CGFloat = 0.0
var num1 = 0.0

var total = num + CGFloat(num1)


var rect = CGRectMake(num, num, num, num)


var shapes = ["circle","square","triangle"]

for shape in shapes {
    
    println(shape + "shape")
}


for i in 0..<shapes.count {
   
    println(i)
                                //shapes.count is the final value
                                // half open range
}


for i in 0...5 {
    
    println(i)                     // closed range
    
}

println(shapes[2])



for (i,shape) in enumerate(shapes) {       //tuple is (variable,variable)
    
    var shapeInfo = "\(i) \(shape) in \(shapes)"
    
    println(shapeInfo)
    
}


var myInfo = ["name":"Jo","age":"31","brand":"nike"]

for (key,value) in myInfo {
    
    println("\(key) = \(value)")
    
    println(myInfo)

}


for (key,value) in myInfo {
    
    if key == "age" {
        
        println("my age is \(value)")
    }

    switch key {
        
        case "age" :
        println("my age is \(value)")
        
        case "name" :
        
        println("my name is \(value)")
        
    case "brand" :
        println("my brand is\(value)")
        
}

//bool is true false and not yes no







