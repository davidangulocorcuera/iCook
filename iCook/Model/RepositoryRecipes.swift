

import Foundation
class RepositoryRecipes{
    static let shared = RepositoryRecipes()
    
    private init(){
      
    }
     func getCategories() -> [Category]{
        let categoryMeat = Category(name: "Carnes", url_image: "https://comecarne.org/wp-content/uploads/2018/10/Beneficios-del-consumo-de-carnes-rojas-3.jpeg", numberOfRecipes: 6, description: "Recetas con carne",recipe: getMeatRecipes())
        
        let categoryFish = Category(name: "Pescados", url_image: "https://ichef.bbci.co.uk/news/660/cpsprodpb/3214/production/_92502821_pescadovarios.jpg", numberOfRecipes: 4, description: "Recetas con pescados", recipe: getFishRecipes())
        
        let categoryCkicken = Category(name: "Pollos", url_image: "https://static01.nyt.com/images/2017/08/02/dining/02COOKING_CHICKENPAPRIKASH2/02COOKING_CHICKENPAPRIKASH2-videoSixteenByNineJumbo1600.jpg", numberOfRecipes: 2, description: "Recetas con pollos", recipe: getChickenRecipes())
        
        let categoryVegetables = Category(name: "Verduras", url_image: "https://www.hola.com/imagenes/cocina/nutricion/2016111789753/verduras-congeladas-consejos/0-403-885/verduras_tips_t-t.jpg", numberOfRecipes: 4, description: "Recetas con verduras", recipe: getVegetablesRecipes())
        
        let categorySalads = Category(name: "Ensaladas", url_image: "https://www.hola.com/imagenes/cocina/escuela/2015032514513/arte/alinar/ensaladas/0-313-406/aceite_ensalada_-t.jpg", numberOfRecipes: 4, description: "Recetas con ensaladas", recipe: getSaladsRecipes())
        
        let categoryPasta = Category(name: "Pastas", url_image: "https://www.goya.com/media/4240/seasoned-pasta-salad.jpg?quality=80", numberOfRecipes: 4, description: "Recetas con pasta", recipe: getPastaRecipes())
        
        let categorySoups = Category(name: "Sopas", url_image: "https://www.cocinavital.mx/wp-content/uploads/2017/08/sopa-de-guias.jpg", numberOfRecipes: 2, description: "Recetas para sopas", recipe: getSoupsRecipes())
        
        let categoryDessert = Category(name: "Postres", url_image: "https://assets.kraftfoods.com/recipe_images/opendeploy/150555_MXM_K62975V0_OR1_CR_640x428.jpg", numberOfRecipes: 6, description: "Recetas con postres", recipe: getDessertsRecipes())
        
        
        return [categoryMeat,categoryFish,categoryCkicken,categoryVegetables,categorySalads,categoryPasta,categorySoups,categoryDessert]
    }
    //----------------------------------MEAT---------------------------------------
    func getMeatRecipes()->[Recipe]{
        let madrid = Place(country: "España", city: "Madrid", lat: 20.7, lng: 19.8)
        let meatRecipe1 = Recipe(name: "Filete con ajo", url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC66hum_CGpKOg3TdTf8U0MNI_lIB-03OHD8yz_ybvKm6ITAhn", description: "Bonito filete con ajo", ingredients: ["ajo","aceite","500gr de filete"], steps: "Cortar el ajo, poner el filete en la sarten, y comertelo", time: "10 minutos", difficulty: "nivel épico", place: madrid)
        return [meatRecipe1]
    }
    
    //----------------------------------FISH---------------------------------------
    func getFishRecipes()->[Recipe]{
        let cadiz = Place(country: "España", city: "Cadiz", lat: 30.7, lng: 49.8)
        let fishRecipe1 = Recipe(name: "Cazon en adobo", url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC66hum_CGpKOg3TdTf8U0MNI_lIB-03OHD8yz_ybvKm6ITAhn", description: "Bonito filete con ajo", ingredients: ["ajo","aceite","500gr de filete"], steps: "Crtar el ajo, poner el filete en la sarten, y comertelo", time: "50 minutos", difficulty: "nivel legendario", place: cadiz)
        return [fishRecipe1]
    }
    //----------------------------------CHICKEN---------------------------------------
    func getChickenRecipes()->[Recipe]{
        let barcelona = Place(country: "España", city: "Barcelona", lat: 30.7, lng: 49.8)
        let chickenRecipe1 = Recipe(name: "Pollo frito", url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC66hum_CGpKOg3TdTf8U0MNI_lIB-03OHD8yz_ybvKm6ITAhn", description: "Bonito filete con ajo", ingredients: ["ajo","aceite","500gr de filete"], steps: "Crtar el ajo, poner el filete en la sarten, y comertelo", time: "20 minutos", difficulty: "nivel normal", place: barcelona)
        return [chickenRecipe1]
    }
    //----------------------------------VEGETABLES---------------------------------------
    func getVegetablesRecipes()->[Recipe]{
        let barcelona = Place(country: "España", city: "Barcelona", lat: 30.7, lng: 49.8)
        let vegetableRecipe1 = Recipe(name: "Pollo frito", url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC66hum_CGpKOg3TdTf8U0MNI_lIB-03OHD8yz_ybvKm6ITAhn", description: "Bonito filete con ajo", ingredients: ["ajo","aceite","500gr de filete"], steps: "Crtar el ajo, poner el filete en la sarten, y comertelo", time: "20 minutos", difficulty: "nivel normal", place: barcelona)
        return [vegetableRecipe1]
    }
    //----------------------------------SALADS---------------------------------------
    func getSaladsRecipes()->[Recipe]{
        let barcelona = Place(country: "España", city: "Barcelona", lat: 30.7, lng: 49.8)
        let saladRecipe1 = Recipe(name: "Pollo frito", url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC66hum_CGpKOg3TdTf8U0MNI_lIB-03OHD8yz_ybvKm6ITAhn", description: "Bonito filete con ajo", ingredients: ["ajo","aceite","500gr de filete"], steps: "Crtar el ajo, poner el filete en la sarten, y comertelo", time: "20 minutos", difficulty: "nivel normal", place: barcelona)
        return [saladRecipe1]
    }
    //----------------------------------PASTA---------------------------------------
    func getPastaRecipes()->[Recipe]{
        let barcelona = Place(country: "España", city: "Barcelona", lat: 30.7, lng: 49.8)
        let pastaRecipe1 = Recipe(name: "Pollo frito", url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC66hum_CGpKOg3TdTf8U0MNI_lIB-03OHD8yz_ybvKm6ITAhn", description: "Bonito filete con ajo", ingredients: ["ajo","aceite","500gr de filete"], steps: "Crtar el ajo, poner el filete en la sarten, y comertelo", time: "20 minutos", difficulty: "nivel normal", place: barcelona)
        return [pastaRecipe1]
    }
    //----------------------------------SOUPS---------------------------------------
    func getSoupsRecipes()->[Recipe]{
        let barcelona = Place(country: "España", city: "Barcelona", lat: 30.7, lng: 49.8)
        let soupRecipe1 = Recipe(name: "Pollo frito", url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC66hum_CGpKOg3TdTf8U0MNI_lIB-03OHD8yz_ybvKm6ITAhn", description: "Bonito filete con ajo", ingredients: ["ajo","aceite","500gr de filete"], steps: "Crtar el ajo, poner el filete en la sarten, y comertelo", time: "20 minutos", difficulty: "nivel normal", place: barcelona)
        return [soupRecipe1]
    }
    //----------------------------------DESSERTS---------------------------------------
    func getDessertsRecipes()->[Recipe]{
        let barcelona = Place(country: "España", city: "Barcelona", lat: 30.7, lng: 49.8)
        let dessertRecipe1 = Recipe(name: "Pollo frito", url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC66hum_CGpKOg3TdTf8U0MNI_lIB-03OHD8yz_ybvKm6ITAhn", description: "Bonito filete con ajo", ingredients: ["ajo","aceite","500gr de filete"], steps: "Crtar el ajo, poner el filete en la sarten, y comertelo", time: "20 minutos", difficulty: "nivel normal", place: barcelona)
        return [dessertRecipe1]
    }
    
}
