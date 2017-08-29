//: Playground - noun: a place where people can play

import UIKit

// Optionals
var number: Int?

print(number)

let userEnteredText = "3"
let userEnteredInt = Int(userEnteredText)

// ! will 'unwrap' userEnteredInt and work as long
// as userEnteredText is "3" and instead of "three"
let catAge = userEnteredInt! * 7

// better alternative using if
if var catAgeAlt = userEnteredInt {
    print(catAgeAlt * 7)
} else {
    // show an error
}
