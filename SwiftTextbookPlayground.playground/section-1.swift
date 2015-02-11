// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let myVariable = 50

let label = "The width is "
let width = 90
let widthLabel = label + String(width)

var shoppingList = [ "wire", "paint", "screwdriver"]

shoppingList[2] = "hammer"

shoppingList.append("nails")

shoppingList.insert("wood", atIndex: 4)

var emptyArray = [String]()

var emptyDictionary = [String: Int]()

let individualScores = [75,98,43,87,38]

var teamScore = 0

for score in individualScores {
    if score > 50 {
        
        teamScore += 3
        
    }else{
        teamScore += 1
    }

}

teamScore

var optionalName: String? = nil
var greeting = "Hello"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let vegetable = "tomato"

switch vegetable {
case "celery":
    let vegtableComment = "Yummy"
case "cucumber", "watercress":
    let vegtableComment = "eeck"
case let x where x.hasSuffix("pepper"):
    let vegtableComment = "Is it spicy \(x)?"
default:
    let vegtableComment = "It's all good!"
}

var interestingNumbers = [

    "Prime": [2,3,5,7,37],
    "Fibonacci": [1,1,2,3,5],
    "Square":[1,4,9,16,25]
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers{
        if number > largest {
            largest = number
        
        }
    }
}

largest


var string1 = "cat"
var string2 = " and dog"

string1 + string2

















