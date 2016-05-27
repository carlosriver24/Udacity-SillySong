//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct SuitedCard {
    enum Suit {
        case Hearts
        case Spades
        case Diamonds
        case Clubs
    }
    
    enum Value {
        case Two
        case Three
        case Four
        case Five
        case Six
        case Seven
        case Eight
        case Nine
        case Ten
        case Jack
        case Queen
        case King
        case Ace
    }
    
    let suit: Suit
    let value: Value
}

protocol PlayingCard {
    var isFaceDown:Bool { set }
    var shortName:String { get }
}