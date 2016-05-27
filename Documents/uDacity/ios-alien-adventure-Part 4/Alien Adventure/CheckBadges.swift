//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//


extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        
        var badgesArePresent = false
        var badgeRequestArray = [UDRequestType]()
        
        for badge in badges {
            
            badgeRequestArray.append(badge.requestType)
        }
        
        for request in requestTypes {
            
            if badgeRequestArray.contains(request) {
                
                let requestIndex = badgeRequestArray.indexOf(request)
                
                badgeRequestArray.removeAtIndex(requestIndex!)
                badgesArePresent = true
                
            } else {
                
                badgesArePresent = false
                return badgesArePresent
            }
        }
        
        return true
    }
    
    
}