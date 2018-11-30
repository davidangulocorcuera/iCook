//
//  RecipesViewController.swift
//  iCook
//
//  Created by Biolizard on 28/11/2018.
//  Copyright © 2018 Biolizard. All rights reserved.
//

import UIKit

class RecipesViewController: UIViewController {
   @IBOutlet weak var tableViewRecipes: UITableView!
   var arr_recipes: [Recipe]!
    var name: String!
    let searchController = UISearchController(searchResultsController: nil)
    internal var filteredRecipes: [Recipe] = []
    
    convenience init(arr_recipes: [Recipe]!, name: String!){
        self.init()
        self.arr_recipes = arr_recipes
        self.name = name
    }
    
    override func viewDidLoad() {
        registercells()
        super.viewDidLoad()
        self.title = name
        
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "buscar"
        searchController.searchBar.backgroundColor = UIColor.white
        navigationItem.searchController = searchController
        definesPresentationContext = true
        navigationItem.hidesSearchBarWhenScrolling = false
        // Do any additional setup after loading the view.
    }
    internal func searchBarIsEmpty() -> Bool{
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    internal func isFiltering() -> Bool{
        return searchController.isActive && !searchBarIsEmpty()
    }
    
    internal func filterContentForSearchText(_ searchText: String){
        filteredRecipes = arr_recipes.filter({ (recipe: Recipe ) -> Bool in
            return (recipe.name.lowercased().contains(searchText.lowercased()))
        })
        tableViewRecipes.reloadData()
    }
    
    private func registercells(){
        let identifierRecipeCell = "RecipeCell"
        let cellNibSwitch = UINib(nibName: identifierRecipeCell, bundle: nil)
        tableViewRecipes.register(cellNibSwitch, forCellReuseIdentifier: "RecipeCell")
        
        tableViewRecipes.register(cellNibSwitch, forCellReuseIdentifier: identifierRecipeCell)
    }


}
extension RecipesViewController:
UITableViewDelegate,UITableViewDataSource{
    
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(isFiltering()){
            return filteredRecipes.count
        }
        return arr_recipes.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 136.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let recipe = arr_recipes[indexPath.row]
        
        let recipeDetailVC = RecipeDetailViewController(recipe: recipe)
        navigationController?.pushViewController(recipeDetailVC, animated: true)
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:RecipeCell = (tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as? RecipeCell)!
        if(isFiltering()){
            let recipeFiltered = filteredRecipes[indexPath.row]
            cell.lbl_tittle.text =  recipeFiltered.name
            cell.recipe_image.sd_setImage(with: URL(string: recipeFiltered.url_image), completed: nil)
            
        }
        else{
            cell.lbl_tittle.text =  arr_recipes[indexPath.row].name
            cell.recipe_image.sd_setImage(with: URL(string: arr_recipes[indexPath.row].url_image), completed: nil)
        }
        
        return cell
    }
    
}
extension RecipesViewController: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
}
