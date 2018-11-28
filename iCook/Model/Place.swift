//
//  Geo.swift
//  iCook
//
//  Created by Biolizard on 28/11/2018.
//  Copyright © 2018 Biolizard. All rights reserved.
//

import Foundation
class Place{
    var country: String!
    var city: String!
    var lat: Double!
    var lng: Double!
    
    init(country: String!, city: String!, lat: Double!, lng: Double!) {
        self.country = country
        self.city = city
        self.lat = lat
        self.lng = lng
    }
}

