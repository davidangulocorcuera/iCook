//
//  MainViewController.swift
//  iCook
//
//  Created by Biolizard on 28/11/2018.
//  Copyright © 2018 Biolizard. All rights reserved.
//

import UIKit
import SDWebImage
class MainViewController: UIViewController {
    @IBOutlet weak var tableViewCategories: UITableView!
    var arr_categories: [Category] = []
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Categorias"
        arr_categories = RepositoryRecipes.shared.getCategories()
        registercells()
    }
    private func registercells(){
        let identifierRecipeCell = "CategoryTableViewCell"
        let cellNibSwitch = UINib(nibName: identifierRecipeCell, bundle: nil)
        tableViewCategories.register(cellNibSwitch, forCellReuseIdentifier: "CategoryTableViewCell")
        
        tableViewCategories.register(cellNibSwitch, forCellReuseIdentifier: identifierRecipeCell)
    }

}
extension MainViewController:
UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arr_categories.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 136.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let recipe = arr_categories[indexPath.row].recipe
        let name = arr_categories[indexPath.row].name
        let recipeVC = RecipesViewController(arr_recipes: recipe, name: name)
        navigationController?.pushViewController(recipeVC, animated: true)
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell:CategoryTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell", for: indexPath) as? CategoryTableViewCell)!
        cell.lbl_tittle.text =  arr_categories[indexPath.row].name
        cell.lbl_description.text =  arr_categories[indexPath.row].description
        cell.lbl_numberOfRecipes.text = "Recetas: \(arr_categories[indexPath.row].numberOfRecipes!)"
        cell.recipe_image.sd_setImage(with: URL(string: arr_categories[indexPath.row].url_image), completed: nil)
        return cell
    }
    
}


