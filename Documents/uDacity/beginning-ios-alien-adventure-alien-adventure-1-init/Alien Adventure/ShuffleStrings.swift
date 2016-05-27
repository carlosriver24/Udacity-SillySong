//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
       
        if s1 == "" && s2 == "" && shuffle == "" {
            
            return true
            
        }
        
        if shuffle.characters.count != s1.characters.count + s2.characters.count {
                return false
            
            }
        
        
//        for item in s1.characters.indices {
//            if item == s1.characters.endIndex.predecessor() {
//                break
//            } else if shuffle.characters.indexOf(s1[item]) > shuffle.characters.indexOf(s1[item.successor()]) {
//                return false
//            } else if shuffle.characters.indexOf(s2[item]) > shuffle.characters.indexOf(s2[item.successor()]) {
//                return false
//            }
//        }
        
        var item = shuffle.startIndex
        
        for character in shuffle.characters {
            if character == s1[s1.startIndex] {
                
            } else if character == s2[s2.startIndex]{
                //continue
            }
            
            
        }
        
        return true
    }
}
