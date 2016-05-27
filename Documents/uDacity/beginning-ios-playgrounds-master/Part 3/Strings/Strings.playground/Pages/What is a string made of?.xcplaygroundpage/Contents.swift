//: [Previous](@previous)

import Foundation

//: ## What is a string made of?
//:
//: It is a struct with two properties of note: .characters and .unicodeScalars

//: You can use the .characters property to ...

// Loop through all the characters in a string
var animal = "octopus"
for character in animal.characters {
    if character == "o" {
        print("🐙")
    } else {
        print ("\(character)")
    }
}

// Count all the characters in a string
let theTruth = "Money can't buy me love."
let love = "I love Gabi"
theTruth.characters.count



// Reverse the characters in a string 
var forwardString = "spoons"
var charactersReversed = forwardString.characters.reverse()
var backwardsString = String(charactersReversed)

//: Unicode scalars are the backbone of Swift strings. As a result, we can incorporate any unicode character directly into a string, including emojis!
let similarTruth = "💰can't buy me 💖"

var letters: [Character] = ["c", "a", "f", "e"]
var string: String = String(letters)
let acuteAccent: Character = "\u{0301}"

string.append(acuteAccent)
print(string.characters.count) // 4
print(string.characters.last!) // é


//: [Next](@next)
