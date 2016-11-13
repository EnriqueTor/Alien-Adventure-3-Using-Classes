//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        var countOfCharacters = [Character:Int]()
        
        if inventory.count > 1 {
        
            for item in inventory {
                
                let name = item.name.lowercaseString
            
                    for char in name.characters {
                        if let value = countOfCharacters[char] {
                            let letterCount = value + 1
                            countOfCharacters[char] = letterCount
                        } else {
                            countOfCharacters[char] = 1
                        }
                }
            }
            
        } else {
            return nil
    }
    var maxValue = 0
        var mostCommonCharacter:Character = "a"
        
        for (letter, number) in countOfCharacters {
            if number > maxValue {
                maxValue = number
                mostCommonCharacter = letter
            }
        }
        return mostCommonCharacter
    }
}