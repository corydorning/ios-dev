//: Playground - noun: a place where people can play
import UIKit

// ? denotes that a variable is optional
//   if the value is null, nothing will happen

// ! denotes that a variable IS NOT null
//   if the value is null, an exception is thrown


// Constant
let otherStr = "Hi, Cory"

// Variable
var str = "Hello, playground"
str = "Hi, playground"


// Strings
let name = "Cory Dorning"
print("Hello " + name)


// Integers
var int = 33
var typeInt: Int = 33

int = int + 1
int += 1

let age = 35

// Variable String - Integer interpolation
print("My name is \(name) and I am \(age) years old")


// Doubles
var double = 8.73
var typeDouble: Double = 8.73


// Floats
var typeFloat: Float = 8.73

// cannot combine types, so this will fail:
// print(double/typeFloat)


// Number Conversion
var strNum = "1" // string
var intNum = Int(strNum)
var doubleNum = Double(strNum)
var floatNum = Float(strNum)

// Get Type
print(type(of: strNum))
print(type(of: intNum)) // integer
print(type(of: doubleNum)) // double
print(type(of: floatNum)) // float


// Booleans
let gameOver = false
var gameOverString = String(gameOver)


// Lesson Task
let myDub = 5.76
let myInt = 8
let myProd = myDub * Double(myInt)

print("The product of \(myDub) and \(myInt) is \(myProd)")


