//: Playground - noun: a place where people can play

import UIKit

let age = 17

// basic if/else using number
if age >= 18 {
    print("You can play!")
} else {
    print("You're too young!")
}

// basic if/else using string
let name = "Cory"

if name == "Cory" { // != is not equal to
    print("Hi \(name) you can play")
} else {
    print("Sorry, \(name), you can't play")
}

// if/else if using AND
if name == "Cory" && age >= 18 {
    print("You can play!")
} else if name == "Cory" {
    print("Sorry \(name), you need to be older")
} else {
    print("You can't play!")
}

// if/else if using OR
if name == "Cory" || name == "Ashley" {
    print("Welcome \(name)")
}

// if/else using Boolean
let isMale = true

if isMale {
    print("You're male!")
} else {
    print("You're female!")
}

// Lesson Task
let username = "corydorning"
var password = "password"

if username == "corydorning" && password == "password" {
    print("Welcome \(username)!")
} else if username == "corydorning" {
    print("You've entered the wrong password \(username)")
} else if password == "password" {
    print("You've entered the wrong username!")
} else {
    print("The login information you used is incorrect")
}
