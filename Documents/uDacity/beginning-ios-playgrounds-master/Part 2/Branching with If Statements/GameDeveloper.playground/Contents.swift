//: If Statements Exercise: Ship it!  Or don't ...

import UIKit

class Game {
    var bugs: Int
    var hasMusic: Bool
    var levels: Int

    init(bugs: Int, hasMusic: Bool, levels: Int) {
        self.bugs = bugs
        self.hasMusic = hasMusic
        self.levels = levels
    }
}

var ponyQuest = Game(bugs: 12, hasMusic: true, levels: 6)
var sixDegreesOfKevinBacon = Game(bugs: 5, hasMusic: true, levels: 3)
var slowAdventuresWithMorrisTheLoris = Game(bugs: 9, hasMusic: true, levels: 7)

func release(game: Game) {
    print("Ship it!")
}

func checkGameForRelease(game: Game) {
    if game.bugs < 10 && game.hasMusic == true && game.levels > 5 {
        release(game)
    }
    
    if game.bugs > 10 {
        print("Game has too many bugs.")
    }
    
    if game.hasMusic == false {
        print("Game does not contain music.")
    }
    
    if game.levels < 5 {
        print("Game does not have the minimum amount of levels.")
    }
}

checkGameForRelease(ponyQuest)
checkGameForRelease(sixDegreesOfKevinBacon)
checkGameForRelease(slowAdventuresWithMorrisTheLoris)





