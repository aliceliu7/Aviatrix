//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    var data = AviatrixData()
var running = false

var name1 = " "
var name2 = " "
 
var location = "St. Louis"
    var distance = 0
    var distanceTraveled = 0
    init(author1: String, author2: String, currentLocation: String) {
        name1 = author1
        name2 = author2
        location = currentLocation
    }
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
    distanceTraveled += data.knownDistances[location]![destination]!
    location = destination
    }
    
    func distanceTo(target : String)-> Int {
//        knownDistances["St. Louis"]!["Phoenix"]!
    
        return data.knownDistances[location]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}

