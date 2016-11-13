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
        
        var highestPlanet = String()
        var highestScore = 1
        var planetScore = Int()
        
        let planetList = NSBundle.mainBundle().URLForResource("PlanetData", withExtension: "json")!
        let rawPlanetList = NSData(contentsOfURL: planetList)!
        var planetListJSON: [[String:AnyObject]]!
        do {
            planetListJSON = try! NSJSONSerialization.JSONObjectWithData(rawPlanetList, options: NSJSONReadingOptions()) as! [[String:AnyObject]]
        }

        for planet in planetListJSON {
            
            
            if let name = planet["Name"] as? String, commonItems = planet["CommonItemsDetected"] as? Int, uncommonItems = planet["UncommonItemsDetected"] as? Int, rareItems = planet["RareItemsDetected"] as? Int, legendaryItems = planet["LegendaryItemsDetected"] as? Int {
                
                planetScore = ((commonItems * 1) + (uncommonItems * 2) + (rareItems * 3) + (legendaryItems * 4))
                
                if planetScore > highestScore {
                    
                    highestPlanet = name
                    highestScore = planetScore
                }
            }
        }
        return highestPlanet
}
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"