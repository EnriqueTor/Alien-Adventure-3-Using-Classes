//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
        if s1.isEmpty && s2.isEmpty && shuffle.isEmpty {
            return true
        }
        else if (s1 + s2).characters.count != shuffle.characters.count {
                return false
        }
        else {
        
            for _ in shuffle.characters {
        
                if shuffle[shuffle.startIndex] == s1[s1.startIndex] && shuffle[shuffle.startIndex.successor()] == s2[s2.startIndex]{
                    return true
                }
                else if shuffle[shuffle.startIndex] == s2[s2.startIndex] && shuffle[shuffle.startIndex.successor()] == s1[s1.startIndex]{
                    return true
                }
                else if shuffle[shuffle.startIndex] == s2[s2.startIndex] && shuffle[shuffle.endIndex.predecessor()] == s1[s1.startIndex]{
                    return true
                }
                else {
                    return false
                }
            }
        }
        return false
    }
}
