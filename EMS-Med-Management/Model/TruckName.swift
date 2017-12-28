//
//  TruckName.swift
//  EMS-Med-Management
//
//  Created by Edward Greene on 12/28/17.
//  Copyright © 2017 Edward Greene. All rights reserved.
//

import Foundation

class TruckName {
    
    static func parseTruckNameJSONData(data: Data) -> [String] {
        var truckNames = [String]()
        
        do {
            let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            // Parse JSON Data.
            
            if let names = jsonResult as? [String] {
                for name in names {
                    var newName = ""
                    newName = name
                    truckNames.append(newName)
                }
            }
            
        } catch let err {
            print(err)
        }
        print("Truck Names count \(truckNames.count)")
        return truckNames
    }
}
