//: Playground - noun: a place where people can play

import UIKit

// Array
var array = [35,36,5,2]
array[2]

// array length
array.count

// add to end of array
array.append(1)

// remove from array
array.remove(at: 4)

// sort array
array.sort()

// Array Types
// define empty string array
let stringArray = [String]()

// create string array with values
let strArray: [String] = ["test", "test2"]


// Lesson Task: Array
var myArray = [3.87, 7.1, 8.9]
myArray.remove(at: 1)
myArray.append(myArray[0] * myArray[1])


// Dictionary
var dictionary = ["computer": "something to do iOS dev on", "coffee": "best drink ever"]

// access value via key
dictionary["computer"] // optional

// non-optional
dictionary["computer"]!

// dictionary length
dictionary.count

// add to dictionary
dictionary["pen"] = "old fashioned writing instrument"

// remove from dictionary
dictionary.removeValue(forKey: "computer")

// define empty string dictionary with double value
var gameCharacters = [String: Double]()
gameCharacters["ghost"] = 8.7

// for more precision use Decimal (slower, less efficient)
var gameEnemies = [String: Decimal]()
gameEnemies["alien"] = 8.7


// Lesson Task: Dictionary
var menu = ["pizza": 10.99, "ice cream": 4.99, "salad": 7.99]
print("The total cost of my meal is $\(menu["pizza"]! + menu["ice cream"]! + menu["salad"]!).")
