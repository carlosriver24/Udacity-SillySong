//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func shortNameFromName(fullName: String) -> String {
    // implementation here
    let lowercaseName = fullName.lowercaseString
    let vowels = NSCharacterSet(charactersInString: "aeiou")
    
    if let firstVowelRange = fullName.rangeOfCharacterFromSet(vowels, options: .CaseInsensitiveSearch) {
        return lowercaseName.substringFromIndex(firstVowelRange.startIndex)
    }
    
    return lowercaseName
    print(lowercaseName)
    
}


func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    
    let shortName = shortNameFromName(fullName)
    
    let lyrics = lyricsTemplate
        .stringByReplacingOccurrencesOfString("<FULL_NAME>", withString: fullName)
        .stringByReplacingOccurrencesOfString("<SHORT_NAME>", withString: shortName)
    
    return lyrics
}

// join an array of strings into a single template string:
let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joinWithSeparator("\n")

print(lyricsForName(bananaFanaTemplate, fullName: "Carlos"))
