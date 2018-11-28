//
//  Category.swift
//  iCook
//
//  Created by Biolizard on 28/11/2018.
//  Copyright © 2018 Biolizard. All rights reserved.
//

import Foundation
class Category {
    var name: String!
    var url_image: String!
    var numberOfRecipes: Int!
    var description: String!
    
    init(name:String!, url_image:String!, numberOfRecipes:Int!, description:String!){
        self.name = name
        self.url_image = url_image
        self.numberOfRecipes = numberOfRecipes
        self.description = description
        
    }
}



