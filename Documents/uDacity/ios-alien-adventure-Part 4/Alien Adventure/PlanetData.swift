//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        
        let jsonDataFile = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "json")!
        let jsonRawFormat = NSData(contentsOfURL: jsonDataFile)!
        
        var jsonDictionary: [[String: AnyObject]]!
        do {
            jsonDictionary = try! NSJSONSerialization.JSONObjectWithData(jsonRawFormat, options: NSJSONReadingOptions()) as! [[String: AnyObject]]
        }
        
        var totalValue = Int()
        var highestScore = 0
        var commonValue = 0
        var uncommonValue = 0
        var rareValue = 0
        var legendaryValue = 0
        var largestPlanet = String()
        
        for planet in jsonDictionary {
            if let name = planet["Name"] as? String {
                print(name)
                if let commonFound = planet["CommonItemsDetected"] as? Int {
                    commonValue = (commonFound * 1)
                }
                
                if let uncommonFound = planet["UncommonItemsDetected"] as? Int {
                    uncommonValue = (uncommonFound * 2)
                }
                
                if let rareFound = planet["RareItemsDetected"] as? Int {
                    rareValue = (rareFound * 1)
                }
                
                if let legendaryFound = planet["LegendaryItemsDetected"] as? Int {
                    legendaryValue = (legendaryFound * 4)
                }
                
                totalValue = (commonValue + uncommonValue + rareValue + legendaryValue)
                
                if totalValue > highestScore {
                    largestPlanet = name
                    highestScore = totalValue
                }
                
            }
        }
        
        return largestPlanet
        //return ""
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"