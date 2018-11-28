//
//  Recipe.swift
//  iCook
//
//  Created by Biolizard on 28/11/2018.
//  Copyright © 2018 Biolizard. All rights reserved.
//
/*
 El detalle de una receta se compone de una foto, una descripción, una serie de ingredientes
 con sus cantidades, una serie de pasos para su preparación, tiempo estimado para cocinarla y
 nivel de dificultad ( básico, medio , difícil) , localización en donde es tradicional ( Provincia y lat-
 lng)
 */
import Foundation
class Recipe{
    var name: String!
    var url_image: String!
    var description: String!
    var ingredients: [String]!
    var steps: String!
    var time: String!
    var difficulty: String!
    var place: Place!
}
