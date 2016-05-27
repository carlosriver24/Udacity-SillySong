//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var rareDic : [UDItemRarity:Int]=[.Common:0, .Legendary:0, .Rare:0, .Uncommon:0]
        
        if inventory.isEmpty{
            return rareDic
        }
        
        for item in inventory{
            switch item.rarity{
            case .Common:
                rareDic[.Common]?++
            case .Legendary:
                rareDic[.Legendary]?++
            case .Rare:
                rareDic[.Rare]?++
            case .Uncommon:
                rareDic[.Uncommon]?++
            }
        }
        

        return rareDic
        //return [UDItemRarity:Int]()
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"