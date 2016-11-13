//
//  RemoveDuplicates.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func removeDuplicates(inventory: [UDItem]) -> [UDItem] {
        
        var newInventory: [UDItem] = []
        
        for item in inventory {
            
            if !newInventory.contains(item) {
                newInventory.append(item)
            }
        }
        
        return newInventory
    }
    
}
