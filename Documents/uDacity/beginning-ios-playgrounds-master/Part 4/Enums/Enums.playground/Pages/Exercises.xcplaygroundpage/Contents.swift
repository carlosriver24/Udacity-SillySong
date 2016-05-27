//: [Previous](@previous)

//: __Problem 1__
//:
//: __1a.__
//: Write an enum to represent the five fingers on a human hand.
//:
//: __1b.__
//: Assign a rawValue of type Int to each finger.

enum Hand: Int {
    case Thumb = 0
    case Index = 1
    case Middle = 2
    case Ring = 3
    case Pinky = 4
}



//: __Problem 2__
//: 
//: Finish the commented switch statement below by writing a case for each season. In each executable statement define the variable `favoriteActivity` to be your favorite activity during a given season.

enum Season {
    case Fall
    case Winter
    case Spring
    case Summer
}

var myFavoriteSeason = Season.Fall
var favoriteActivity = ""

switch (myFavoriteSeason) {
//    // TODO: Fill in cases for the 4 seasons in the enum above
case .Fall:
    favoriteActivity = "Rake leafs."
case .Winter:
    favoriteActivity = "Plow snow."
case .Spring:
    favoriteActivity = "Plant trees."
case .Summer:
    favoriteActivity = "Swim."
}

//: __Problem 3__
//: 
//: __3a.__ Assign rawValues to each member of the enum, Weather. The rawValue should be a string indicating the appropriate accessory or attire for that weather. For, example, `case Snow = "parka"`.

enum Weather: String {
    case Rain = "Umbrella"
    case Sun = "Swimming Trunks"
    case Snow = "Snowboard"
    case Wind = "Windbreakers"
}

//: __3b.__ Using string interpolation and one of the rawValues you just assigned, recreate this reminder for a friend who is headed out into the elements.

// TODO: Assign the current weather outside to the variable, currentWeather. 
var currentWeather = Weather(rawValue: "Umbrella")
var pastWeather = Weather.Rain.rawValue

// TODO: Replace "jacket" with string interpolation of a raw value
var reminder = "Don't forget your \(Weather.Rain.rawValue)!"

//: [Next](@next)
