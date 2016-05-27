//: ## SuitedCard Struct
struct SuitedCard: Comparable {
    
//struct SuitedCard {
    // a card can be ♥️, ♣️, ♦️, ♠️
    enum Suit {
        case Hearts
        case Spades
        case Diamonds
        case Clubs
    }
    
    // the possible values of a card
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
    

    // properties
    let suit: Suit
    let value: Value
    var isFaceDown: Bool
    
   
}

let card1 = SuitedCard(suit: .Hearts, value: .Ace, isFaceDown: false)

let card2 = SuitedCard(suit: .Hearts, value: .Three, isFaceDown: false)

let card3 = SuitedCard(suit: .Spades, value: .Jack, isFaceDown: false)

let card4 = SuitedCard(suit: .Clubs, value: .Ten, isFaceDown: false)

card1 == card2 // evaluates to false

card1 == card4 // evaluates to false

card3 == card4 // evaluates to true (because a ten and a jack are both worth 10 points)

//Implement Comparable

func == (lhs: SuitedCard, rhs: SuitedCard) -> Bool {
    
        
        switch lhs.value {
        case .Jack, .King, .Queen, .Ten:
            switch rhs.value {
            case .Jack, .King, .Queen, .Ten:
                true
            default:
                break
            }
        }
        
        return lhs.value == rhs.value
    
}


func < (lhs: SuitedCard, rhs: SuitedCard) -> Bool {
    
        if lhs.value == .Ace {
            return false
        }
        
        return true
    }


//Implement dealHand()

var cards = [SuitedCard]()

func dealHand () -> (faceDown:SuitedCard, faceUp: SuitedCard) {
    
    var faceDown = cards.popLast()
    faceDown?.isFaceDown = true
    var faceUp = cards.popLast()
    faceUp?.isFaceDown = false
    
    return  (faceDown!, faceUp!)
}
