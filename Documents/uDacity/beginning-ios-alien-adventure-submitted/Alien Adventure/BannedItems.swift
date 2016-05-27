//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        
        var bannedItem = [Int]()
        
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")!
        
        let dataFileArray = NSArray(contentsOfURL: dataFileURL) as! [[String:AnyObject]]
        
        for item in dataFileArray {
            
            if let name = item["Name"] as? String {
                if name.containsString("Laser") {
                    if let historicalData = item["HistoricalData"] as? [String:AnyObject] {
                        if let age = historicalData["CarbonAge"] as? Int {
                            if age < 30 {
                                if let id = item["ItemID"] as? Int {
                                    bannedItem.append(id)
                                }
                            }
                        }
                    }
                }
            }
        }

        return bannedItem
        //return [Int]()
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"