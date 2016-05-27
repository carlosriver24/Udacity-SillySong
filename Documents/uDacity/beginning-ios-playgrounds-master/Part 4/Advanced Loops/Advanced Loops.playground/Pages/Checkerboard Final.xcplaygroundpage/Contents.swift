//: [Previous](@previous)
/*:
## Checkerboard Final
*/
print("The final answer is below!")
//i controls rows
//j controls columns
for i in 1...16 {
    for j in 1...16 {
        if i % 4 == 4 && j % 4 == 0 {
            print("🆒", terminator: "")
        } else if j % 2 == i % 2 {
            print("⬛", terminator: "")
        } else {
            print("◻️", terminator: "")
        }
    }
    print("")
}
