

import Foundation
class RepositoryRecipes{
    static let shared = RepositoryRecipes()
    
    private init(){

    }
     func getCategories() -> [Category]{
        let categoryMeat = Category(name: "Carnes", url_image: "https://comecarne.org/wp-content/uploads/2018/10/Beneficios-del-consumo-de-carnes-rojas-3.jpeg", numberOfRecipes: 4, description: "Recetas con carne",recipe: getMeatRecipes())
        
        let categoryFish = Category(name: "Pescados", url_image: "https://ichef.bbci.co.uk/news/660/cpsprodpb/3214/production/_92502821_pescadovarios.jpg", numberOfRecipes: 4, description: "Recetas con pescados", recipe: getFishRecipes())
        
        let categoryCkicken = Category(name: "Pollos", url_image: "https://static01.nyt.com/images/2017/08/02/dining/02COOKING_CHICKENPAPRIKASH2/02COOKING_CHICKENPAPRIKASH2-videoSixteenByNineJumbo1600.jpg", numberOfRecipes: 4, description: "Recetas con pollos", recipe: getChickenRecipes())
        
        let categoryVegetables = Category(name: "Verduras", url_image: "https://www.hola.com/imagenes/cocina/nutricion/2016111789753/verduras-congeladas-consejos/0-403-885/verduras_tips_t-t.jpg", numberOfRecipes: 4, description: "Recetas con verduras", recipe: getVegetablesRecipes())
        
        let categorySalads = Category(name: "Ensaladas", url_image: "https://www.hola.com/imagenes/cocina/escuela/2015032514513/arte/alinar/ensaladas/0-313-406/aceite_ensalada_-t.jpg", numberOfRecipes: 4, description: "Recetas con ensaladas", recipe: getSaladsRecipes())
        
        let categoryPasta = Category(name: "Pastas", url_image: "https://www.goya.com/media/4240/seasoned-pasta-salad.jpg?quality=80", numberOfRecipes: 1, description: "Recetas con pasta", recipe: getPastaRecipes())
        
        let categorySoups = Category(name: "Sopas", url_image: "https://www.cocinavital.mx/wp-content/uploads/2017/08/sopa-de-guias.jpg", numberOfRecipes: 1, description: "Recetas para sopas", recipe: getSoupsRecipes())
        
        let categoryDessert = Category(name: "Postres", url_image: "https://assets.kraftfoods.com/recipe_images/opendeploy/150555_MXM_K62975V0_OR1_CR_640x428.jpg", numberOfRecipes: 1, description: "Recetas con postres", recipe: getDessertsRecipes())
        
        
        return [categoryMeat,categoryFish,categoryCkicken,categoryVegetables,categorySalads,categoryPasta,categorySoups,categoryDessert]
    }
    //----------------------------------MEAT---------------------------------------
    func getMeatRecipes()->[Recipe]{
        let madrid = Place(country: "España", city: "Madrid", lat: 40.4, lng: -3.7)
        let meatRecipe1 = Recipe(name: "Filete con ajo", url_image: "https://i.ytimg.com/vi/hvjeZ8-7kec/maxresdefault.jpg", description: "Bonito filete con ajo", ingredients: ["ajo","aceite","500gr de filete"], steps: "Cortar el ajo, poner el filete en la sarten, y comertelo", time: "10 minutos", difficulty: "nivel épico", place: madrid)
        let cadiz = Place(country: "España", city: "Cadiz", lat: 36.53, lng: -6.29)
        let meatRecipe2 = Recipe(name: "Costillas ahumadas", url_image: "https://www.weber.com/on/demandware.static/-/Sites-master-catalog-gao-latam/default/dw5ed211b1/zoom/Menu04_Dish3-1529354396.jpg", description: "Increibles costillas", ingredients: ["costillas","humo","cebolla"], steps: "poner las costillas encima del humo, vertir cebolla troceada por encima", time: "120 minutos", difficulty: "nivel Legendario", place: cadiz)
        let leon = Place(country: "España", city: "Leon", lat: 42.5, lng: -5.1)
        let meatRecipe3 = Recipe(name: "Hamburguesa", url_image: "https://i.ytimg.com/vi/_KVn4ycT8Cc/maxresdefault.jpg", description: "Preciosa hamburguesa", ingredients: ["pan","carne picada","cosas"], steps: "poner la hamburguesa en la plancha, meterla entre dos panes, y ponerle las cosas encima", time: "25 minutos", difficulty: "nivel normal", place: leon)
        let segovia = Place(country: "España", city: "Segovia", lat: 40.9, lng: -4.1)
        let meatRecipe4 = Recipe(name: "Almóndigas", url_image: "https://static2.eldiariomontanes.es/www/pre2017/multimedia/noticias/201510/29/media/cortadas/albondigas--660x371.jpg", description: "bonitas almóndigas redondas", ingredients: ["carne picada","ajo","perejil"], steps: "Hacer bolas de carne picada con ajo y perejil", time: "80 minutos", difficulty: "nivel avanzado", place: segovia)
        return [meatRecipe1,meatRecipe2,meatRecipe3,meatRecipe4]
    }
    
    //----------------------------------FISH---------------------------------------
    func getFishRecipes()->[Recipe]{
        let cadiz = Place(country: "España", city: "Cadiz", lat: 36.53, lng: -6.29)
        let fishRecipe1 = Recipe(name: "Cazon en adobo", url_image: "https://canalcocina.es/medias/_cache/zoom-05f199d4b9fc2d5701eb57ab7805851d-920-518.jpg", description: "increible cazon en adobo", ingredients: ["cazon","adobo",""], steps: "cocinar el cazon y adobarlo", time: "40 minutos", difficulty: "nivel avanzado", place: cadiz)
        let madrid = Place(country: "España", city: "Madrid", lat: 40.4, lng: -3.7)
        let fishRecipe2 = Recipe(name: "calamares", url_image: "https://www.laespanolaaceites.com/uploads/recetas/fotos/calamares-en-salsa.jpg", description: "Alucinantes calamares", ingredients: ["calamares","pan rallado","felicidad"], steps: "Empanar los calamares y vertirles felicidad", time: "10 minutos", difficulty: "nivel supremo", place: madrid)
        let leon = Place(country: "España", city: "Leon", lat: 42.5, lng: -5.1)
        let fishRecipe3 = Recipe(name: "ostras", url_image: "https://www.gastronomistas.com/wp-content/uploads/ostras-gouthier-a-domicilio.jpg", description: "Bonitas ostras", ingredients: ["ostras","cosas"], steps: "Cocinar las ostras y añadirle cosas", time: "600 minutos", difficulty: "nivel legendario", place: leon)
        let segovia = Place(country: "España", city: "Segovia", lat: 40.9, lng: -4.1)
        let fishRecipe4 = Recipe(name: "centollo", url_image: "https://www.pescaderiascorunesas.es/sites/default/files/2017-10/centollo-cocido.jpg", description: "Increible centollo", ingredients: ["centollo","agua"], steps: "cocinar el centollo y comertelo", time: "50 minutos", difficulty: "nivel legendario", place: segovia)
        return [fishRecipe1,fishRecipe2,fishRecipe3,fishRecipe4]
    }
    //----------------------------------CHICKEN---------------------------------------
    func getChickenRecipes()->[Recipe]{
        let cadiz = Place(country: "España", city: "Cadiz", lat: 36.53, lng: -6.29)
        let chickenRecipe1 = Recipe(name: "Pollo frito", url_image: "https://portal.minervafoods.com/files/styles/blog_full_page/public/frango_frito.jpg?itok=d_GGinbN", description: "Precioso pollo frito", ingredients: ["pollo","fritura"], steps: "freir el pollo y disfrutarlo", time: "10 minutos", difficulty: "nivel normal", place: cadiz)
        let madrid = Place(country: "España", city: "Madrid", lat: 40.4, lng: -3.7)
        let chickenRecipe2 = Recipe(name: "Pollo asado", url_image: "https://img.saboresdehoy.com/receta/431/pollo-asado.jpg", description: "feliz pollo asado", ingredients: ["pollo","cosas"], steps: "Asar el pollo y disfrutarlo", time: "50 minutos", difficulty: "nivel legendario", place: madrid)
        let leon = Place(country: "España", city: "Leon", lat: 42.5, lng: -5.1)
        let chickenRecipe3 = Recipe(name: "Alitas de pollo", url_image: "https://www.comedera.com/wp-content/uploads/2013/07/alitas-de-pollo-al-horno.jpg", description: "Preciosas alitas", ingredients: ["alitas de pollo","cosas"], steps: "Cocinar las alitas y comertelas", time: "10 minutos", difficulty: "nivel normal", place: leon)
        let segovia = Place(country: "España", city: "Segovia", lat: 40.9, lng: -4.1)
        let chickenRecipe4 = Recipe(name: "Pato a la naranja", url_image: "https://locosxlagastronomia.com/wp-content/uploads/2017/11/pato-naranja-1200x675-1024x576.jpg", description: "Increible pato a la naranja", ingredients: ["pato","naranjas"], steps: "cocinar el pato y comertelo", time: "20 minutos", difficulty: "nivel normal", place: segovia)
        return [chickenRecipe1,chickenRecipe2,chickenRecipe3,chickenRecipe4]
    }
    //----------------------------------VEGETABLES---------------------------------------
    func getVegetablesRecipes()->[Recipe]{
        let cadiz = Place(country: "España", city: "Cadiz", lat: 36.53, lng: -6.29)
        let vegetableRecipe1 = Recipe(name: "Judias verdes", url_image: "https://unareceta.com/wp-content/uploads/2016/10/judias-verdes.jpg", description: "bonitas judias", ingredients: ["ajo","aceite","judias"], steps: "cocinar las judias y comertelas", time: "30 minutos", difficulty: "nivel avanzado", place: cadiz)
        let madrid = Place(country: "España", city: "Madrid", lat: 40.4, lng: -3.7)
        let vegetableRecipe2 = Recipe(name: "Alcachofas con lacon", url_image: "https://lh3.googleusercontent.com/-shSwbuakjZM/Vy3ldEIA7MI/AAAAAAAAIps/c33862d7F3I/s640/blogger-image-577527329.jpg", description: "bonitas alcachofas", ingredients: ["alcachofas","lacon"], steps: "cocinar las alcachofas y vertirle lacon por encima", time: "20 minutos", difficulty: "nivel legendario", place: madrid)
        let leon = Place(country: "España", city: "Leon", lat: 42.5, lng: -5.1)
        let vegetableRecipe3 = Recipe(name: "Menestra de verduras", url_image: "https://unareceta.com/wp-content/uploads/2016/10/menestra-de-verduras.jpg", description: "Bonita menestra", ingredients: ["verduras","verduras","guisantes"], steps: "Mezclar todas las verduras y comertelas", time: "30 minutos", difficulty: "nivel avanzado", place: leon)
        let segovia = Place(country: "España", city: "Segovia", lat: 40.9, lng: -4.1)
        let vegetableRecipe4 = Recipe(name: "Guisantes con jamon", url_image: "https://www.bezzia.com/wp-content/uploads/2017/01/guisantes_jamon.jpg", description: "Bonito filete con ajo", ingredients: ["guisantes","jamon"], steps: "cocinar los guisantes y vertirles jamon por encima", time: "10 minutos", difficulty: "nivel legendario", place: segovia)
        return [vegetableRecipe1,vegetableRecipe2,vegetableRecipe3,vegetableRecipe4]
    }
    //----------------------------------SALADS---------------------------------------
    func getSaladsRecipes()->[Recipe]{
        let cadiz = Place(country: "España", city: "Cadiz", lat: 36.53, lng: -6.29)
        let saladRecipe1 = Recipe(name: "Ensalada de lechuga", url_image: "https://recetasvanesa.files.wordpress.com/2013/03/img_3324.jpg", description: "Bonita ensalada", ingredients: ["lechuga"], steps: "coger la lechuga de la huerta y saltearla", time: "5 minutos", difficulty: "nivel legendario", place: cadiz)
        let madrid = Place(country: "España", city: "Madrid", lat: 40.4, lng: -3.7)
        let saladRecipe2 = Recipe(name: "Ensalada de tomate", url_image: "https://www.hogarmania.com/archivos/201705/ensalada-tomate-xl-848x477x80xX-1.jpg", description: "Bonitos tomates", ingredients: ["lechga","tomate"], steps: "Mezclar el tomate con la lechuga de huerta", time: "10 minutos", difficulty: "nivel normal", place: madrid)
        let leon = Place(country: "España", city: "Leon", lat: 42.5, lng: -5.1)
        let saladRecipe3 = Recipe(name: "Ensalada con cebolla", url_image: "https://assets.kraftfoods.com/recipe_images/opendeploy/75323_640x428.jpg", description: "Bonitas cebollas", ingredients: ["cebolla","lechuga"], steps: "mezclar la lechuga con la cebolla", time: "90 minutos", difficulty: "nivel legendario", place: leon)
        let segovia = Place(country: "España", city: "Segovia", lat: 40.9, lng: -4.1)
        let saladRecipe4 = Recipe(name: "Ensalada completa", url_image: "https://www.hogarmania.com/archivos/201210/413.-ensalada-completa-668x400x80xX.jpg", description: "Bonita ensalada", ingredients: ["lechuga","cebolla"], steps: "Mezclar la lechuga con la cebolla", time: "50 minutos", difficulty: "nivel legendario", place: segovia)
        return [saladRecipe1,saladRecipe2,saladRecipe3,saladRecipe4]
    }
    //----------------------------------PASTA---------------------------------------
    func getPastaRecipes()->[Recipe]{
        let cadiz = Place(country: "España", city: "Cadiz", lat: 36.53, lng: -6.29)
        let pastaRecipe1 = Recipe(name: "Putanesca", url_image: "https://okdiario.com/img/recetas/2016/10/27/salsa-putanesca.jpg", description: "Bonita salsa para pastas", ingredients: ["cosas","tomate","orégano"], steps: "Cocinar la salsa y vertirla en la pasta", time: "50 minutos", difficulty: "nivel legendario", place: cadiz)
        
        return [pastaRecipe1]
    }
    //----------------------------------SOUPS---------------------------------------
    func getSoupsRecipes()->[Recipe]{
        let cadiz = Place(country: "España", city: "Cadiz", lat: 36.53, lng: -6.29)
        let soupRecipe1 = Recipe(name: "Caldo Gallego", url_image: "https://www.recetashuga.es/wp-content/uploads/2013/12/CIMG4159_portada-1024x768.jpg", description: "Bonito caldo", ingredients: ["verduras","agua"], steps: "Preparar el caldo y calentarlo", time: "580 minutos", difficulty: "nivel legendario", place: cadiz)
    
        return [soupRecipe1]
    }
    //----------------------------------DESSERTS---------------------------------------
    func getDessertsRecipes()->[Recipe]{
        let cadiz = Place(country: "España", city: "Cadiz", lat: 36.53, lng: -6.29)
        let dessertRecipe1 = Recipe(name: "Arroz con leche", url_image: "https://recetacubana.com/wp-content/uploads/2017/09/arroz-con-leche.jpg", description: "Asqueroso arroz con leche", ingredients: ["leche","arroz"], steps: "vertir leche sobre arroz con un poco de canela", time: "10 minutos", difficulty: "nivel legendario", place: cadiz)
      
        return [dessertRecipe1]
    }
    
}
