//
//  DataHolder.swift
//  iCook
//
//  Created by Biolizard on 28/11/2018.
//  Copyright © 2018 Biolizard. All rights reserved.
//

import Foundation
class RepositoryRecipes{
    static let shared = RepositoryRecipes()
    
    private init(){
      
    }
     func getCategories() -> [Category]{
        let categoryMeat = Category(name: "Carnes", url_image: "https://comecarne.org/wp-content/uploads/2018/10/Beneficios-del-consumo-de-carnes-rojas-3.jpeg", numberOfRecipes: 6, description: "Recetas con carne")
        let categoryFish = Category(name: "Pescados", url_image: "https://ichef.bbci.co.uk/news/660/cpsprodpb/3214/production/_92502821_pescadovarios.jpg", numberOfRecipes: 4, description: "Recetas con pescados")
        let categoryCkicken = Category(name: "Pollos", url_image: "https://static01.nyt.com/images/2017/08/02/dining/02COOKING_CHICKENPAPRIKASH2/02COOKING_CHICKENPAPRIKASH2-videoSixteenByNineJumbo1600.jpg", numberOfRecipes: 2, description: "Recetas con pollos")
        let categoryVegetables = Category(name: "Verduras", url_image: "https://www.hola.com/imagenes/cocina/nutricion/2016111789753/verduras-congeladas-consejos/0-403-885/verduras_tips_t-t.jpg", numberOfRecipes: 4, description: "Recetas con verduras")
        let categorySalads = Category(name: "Ensaladas", url_image: "https://www.hola.com/imagenes/cocina/escuela/2015032514513/arte/alinar/ensaladas/0-313-406/aceite_ensalada_-t.jpg", numberOfRecipes: 4, description: "Recetas con ensaladas")
        let categoryPasta = Category(name: "Pastas", url_image: "https://www.goya.com/media/4240/seasoned-pasta-salad.jpg?quality=80", numberOfRecipes: 4, description: "Recetas con pasta")
        let categorySoups = Category(name: "Sopas", url_image: "https://www.cocinavital.mx/wp-content/uploads/2017/08/sopa-de-guias.jpg", numberOfRecipes: 2, description: "Recetas para sopas")
        let categoryDessert = Category(name: "Postres", url_image: "https://assets.kraftfoods.com/recipe_images/opendeploy/150555_MXM_K62975V0_OR1_CR_640x428.jpg", numberOfRecipes: 6, description: "Recetas con postres")
        
        
        return [categoryMeat,categoryFish,categoryCkicken,categoryVegetables,categorySalads,categoryPasta,categorySoups,categoryDessert]
    }
    
}
