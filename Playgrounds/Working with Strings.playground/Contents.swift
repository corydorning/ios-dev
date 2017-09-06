//: Playground - noun: a place where people can play

import UIKit

var str = "Hello"

var newString = str + " Cory!"

for char in newString.characters {
    print(char)
}

let newTypeString = NSString(string: newString)

newTypeString.substring(to: 5)
newTypeString.substring(from: 4)

// have to convert to NSString to use substring
NSString(string: newTypeString.substring(from: 6)).substring(to: 4)

newTypeString.substring(with: NSRange(location: 6, length: 4))

if newTypeString.contains("Cory") {
    print("newTypeString contains Cory")
}

newTypeString.components(separatedBy: " ")

newTypeString.uppercased

newTypeString.lowercased
