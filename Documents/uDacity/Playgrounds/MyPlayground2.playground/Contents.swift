//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//let greeting = "Guten Tag!"
//
//greeting // This is the string variable initialized above with the value "Guten Tag!"
//
//greeting.characters // This accesses the individual characters in the string
//
//greeting.characters.indices // This is the indexes in the string, its a range

//: # Strings and Characters

//: ## Accessing and Modifying a String

//: ### String Indices

//: *You can use subscript syntax to access the Character at a particular String index.*

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.endIndex.predecessor()]
// !
greeting[greeting.startIndex.successor()]
// u
let index = greeting.startIndex.advancedBy(7)
greeting[index]
// a

//: *Attempting to access a Character at an index outside of a string’s range will trigger a runtime error.*

//greeting[greeting.endIndex] // Uncomment to see error
//greeting.endIndex.successor() // Uncomment to see error

//: *Use the indices property of the characters property to create a Range of all of the indexes used to access individual characters in a string.*

for index in greeting.characters.indices {
    print("\(greeting[index]) ", terminator: "")
}
// prints "G u t e n   T a g !"