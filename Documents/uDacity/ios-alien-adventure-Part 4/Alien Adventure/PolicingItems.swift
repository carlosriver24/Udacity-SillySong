//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError:Int] {
        
        var errorCheck = [UDPolicingError:Int]()
        errorCheck[.ItemFromCunia] = 0
        errorCheck[.NameContainsLaser] = 0
        errorCheck[.ValueLessThan10] = 0
        
        for items in inventory{
            do {
                try policingFilter(items)
            } catch UDPolicingError.ItemFromCunia {
                errorCheck[.ItemFromCunia]! += 1
            } catch UDPolicingError.NameContainsLaser {
                errorCheck[.NameContainsLaser]! += 1
            } catch UDPolicingError.ValueLessThan10 {
                errorCheck[.ValueLessThan10]! += 1
            } catch {
                print("all errors")
            }
        }
        
        return errorCheck
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"