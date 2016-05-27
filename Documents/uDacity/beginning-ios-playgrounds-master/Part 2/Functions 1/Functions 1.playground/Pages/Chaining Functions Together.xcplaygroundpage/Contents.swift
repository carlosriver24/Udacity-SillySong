//: [Previous](@previous)
/*:
## Chaining Functions Together
*/
func addExcitementToString(string: String) -> String {
    return string + "!"
}

// chained together twice
let excitedString = addExcitementToString(addExcitementToString("yay"))

// chained together 4 times
let reallyExcitedString = addExcitementToString(addExcitementToString(addExcitementToString(addExcitementToString("wahoo"))))



func madLibGenerator(adverb: String, adjective: String, pluralnoun:String) -> String {
        return ("Whew! I've been \(adverb) learning how to build \(adjective) app with Udacity. I hope they teach me about \(pluralnoun) soon. That would be helpful.")
}

madLibGenerator("faithfully", adjective: "intresting", pluralnoun:  "objects")

let midLibresults = madLibGenerator("faithfully", adjective: "intresting", pluralnoun:  "objects")

print(midLibresults)//: [Next](@next)
