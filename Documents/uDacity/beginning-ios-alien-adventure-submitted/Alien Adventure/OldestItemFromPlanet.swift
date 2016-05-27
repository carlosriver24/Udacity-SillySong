//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        var oldestAge = UDItem?()
        var baseAge = 0
 
        for item in inventory {
            
                if let planetName = item.historicalData["PlanetOfOrigin"] as? String {
                    if planetName == "Cunia" {
                        if let ageNumber = item.historicalData["CarbonAge"] as? Int {
                            print("this is the ageNumber\(ageNumber)")
                            if ageNumber > baseAge {
                                
                                oldestAge = item
                                print("OLD value of baseAge \(baseAge)")
                                baseAge = ageNumber
                                print("new value of baseAge \(baseAge)")
                            }
                        }
                    }
                }
            }


        return oldestAge
    }
    
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"