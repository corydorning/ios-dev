//: Playground - noun: a place where people can play

import UIKit

// for loops - best for looping through arrays
let forArray = [8, 4, 8, 1]

for number in forArray {
    print(number)
}

// update values in an array
var numbers = [7, 2, 9, 4, 11]

for (index, value) in numbers.enumerated() {
    numbers[index] += 1
}

print(numbers)

// Lesson Task - loop through array with names of 4 friends/family, print "Hi there ---!"
let family = ["Ashley", "Blake", "Brayden", "Noah"]

for name in family {
    print("Hi there \(name)!")
}

// Lesson Task - Halve each array value
var lessonArray: [Double] = [8, 7, 19, 28]

for (index, value) in lessonArray.enumerated() {
    lessonArray[index] = value / 2
}

print(lessonArray)

// while loops - best for non-arrays
var i = 1

while i <= 10 {
    print(i)
    
    i += 1
}

// Lesson Task - display first 20 numbers of 7 times tables
var i2 = 1

while i2 <= 20 {
    print(i2 * 7)
    i2 += 1
}

// Lesson Task - add one to each value in the array
var array = [7, 23, 98, 1, 0, 763]
var i3 = 0

while i3 < array.count {
    array[i3] += 1
    i3 += 1
}
print(array)
