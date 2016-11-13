//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

let itemList = NSBundle.mainBundle().URLForResource("ItemList", withExtension: "plist")!

let itemArray = NSArray(contentsOfURL: itemList) as! [[String:AnyObject]]

extension Hero {

    func bannedItems(dataFile: String) -> [Int] {
        
        var bannedItems:[Int] = []
        
        for item in itemArray {
            
            if let itemID = item["ItemID"] as? Int, name = item["Name"] as? String, historicalData = item["HistoricalData"] as? [String:AnyObject] {
            
                        if let carbonAge = historicalData["CarbonAge"] as? Int {
                            print(carbonAge)
                            
                            if name.containsString("Laser") && carbonAge < 30 {
                                bannedItems.append(itemID)
                            }
                }
            }
        }
        return bannedItems
        
    }
}



// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"