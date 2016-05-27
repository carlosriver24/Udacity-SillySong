//: [Previous](@previous)
/*:
## Overloading Operators
We'll create the TeamRecord struct for this example.
*/
struct TeamRecord {
    var wins: Int
    var losses: Int
}

let record_2013 = TeamRecord(wins: 4, losses: 2)
let record_2014 = TeamRecord(wins: 6, losses: 3)

//: Overloading addition operator for TeamRecord
func + (east: TeamRecord, west: TeamRecord) -> TeamRecord {
    return TeamRecord(wins: east.wins + west.wins, losses: east.losses + west.losses)
}

func +(east: Int, west: Int) -> Int {
    return east * west
}

4 + 4

// Adding two TeamRecord structs!
let record_2013_2014 = record_2013 + record_2014

//: Overloading equality operator for TeamRecord
func == (left: TeamRecord, right: TeamRecord) -> Bool {
    return (left.wins == right.wins) &&
        (left.losses == right.losses)
}

record_2013 == record_2014
record_2013 == record_2013

//: Overloading inequality operator for TeamRecord
func != (left: TeamRecord, right: TeamRecord) -> Bool {
    return !(left == right)
}

record_2013 != record_2014
record_2013 != record_2013

//: [Next](@next)
