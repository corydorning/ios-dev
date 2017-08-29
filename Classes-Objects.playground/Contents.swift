//: Playground - noun: a place where people can play

import UIKit

// Classes
class Ghost {
    var isAlive = true
    var strength = 9
    
    func kill() {
        isAlive = false
    }
    
    func isStrong() -> Bool {
        if strength > 10 {
            return true
        } else {
            return false
        }
    }
}

// Objects
var ghost = Ghost()

ghost.isAlive
ghost.strength = 20
ghost.kill()

print(ghost.isAlive)
print(ghost.isStrong())
