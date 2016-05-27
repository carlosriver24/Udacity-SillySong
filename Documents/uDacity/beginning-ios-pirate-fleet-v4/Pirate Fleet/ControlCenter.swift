//
//  ControlCenter.swift
//  Pirate Fleet
//
//  Created by Jarrod Parkes on 9/2/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

struct GridLocation {
    let x: Int
    let y: Int
}

struct Ship {
    let length: Int
    let location: GridLocation
    let isVertical: Bool
}

struct Mine: _Mine_ {
    let location: GridLocation
    let explosionText: String
}

class ControlCenter {
    
    func addShipsAndMines(human: Human) {
        //Define Ships
        let smallShip1 = Ship(length: 2, location: GridLocation(x: 0, y: 0), isVertical: false)
        let mediumShip1 = Ship(length: 3, location: GridLocation(x: 4, y: 1), isVertical: false)
        let mediumShip2 = Ship(length: 3, location: GridLocation(x: 1, y: 2), isVertical: true)
        let largeShip1 = Ship(length: 4, location: GridLocation(x: 1, y: 6), isVertical: false)
        let extraLagreShip1 = Ship(length: 5, location: GridLocation(x: 6, y: 3), isVertical: true)
        
        //Define Mines
        let mine1 = Mine(location:GridLocation(x: 0, y: 4), explosionText: "Mine is hit")
        let mine2 = Mine(location:GridLocation(x: 4, y: 2), explosionText: "Mine is hit")
        
        
        //Initiate ships and add them to grid
        human.addShipToGrid(smallShip1)
        human.addShipToGrid(mediumShip1)
        human.addShipToGrid(mediumShip2)
        human.addShipToGrid(largeShip1)
        human.addShipToGrid(extraLagreShip1)
        
        //Initiate mines and add them to grid
        human.addMineToGrid(mine1)
        human.addMineToGrid(mine2)
        
        
    }
    
    func calculateFinalScore(gameStats: GameStats) -> Int {
        
        var finalScore: Int
        
        let enemyShipsSunk = (5 - gameStats.enemyShipsRemaining)
        let humanShipsRemaining = (5 - gameStats.humanShipsSunk)
        let numberOfGuesses = gameStats.numberOfHitsOnEnemy + gameStats.numberOfHitsOnEnemy
        
        finalScore = (enemyShipsSunk * gameStats.sinkBonus) + (humanShipsRemaining * gameStats.shipBonus) - (numberOfGuesses * gameStats.guessPenalty)
        
        return finalScore
    
    }
}