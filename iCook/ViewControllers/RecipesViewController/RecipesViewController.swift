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
    
    convenience init(arr_recipes: [Recipe]!, name: String!){
        self.init()
        self.arr_recipes = arr_recipes
        self.name = name
    }
    
    override func viewDidLoad() {
        registercells()
        super.viewDidLoad()
        self.title = name
        // Do any additional setup after loading the view.
    }
    private func registercells(){
        let identifierRecipeCell = "RecipeTableViewCell"
        let cellNibSwitch = UINib(nibName: identifierRecipeCell, bundle: nil)
        tableViewRecipes.register(cellNibSwitch, forCellReuseIdentifier: "RecipeTableViewCell")
        
        tableViewRecipes.register(cellNibSwitch, forCellReuseIdentifier: identifierRecipeCell)
    }


}
extension RecipesViewController:
UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 136.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        /*  let post = posts[indexPath.row]
         let comentsVC = ComentsViewController(postId: post.id)
         navigationController?.pushViewController(comentsVC, animated: true)*/
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:RecipeTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "RecipeTableViewCell", for: indexPath) as? RecipeTableViewCell)!
        
        return cell
    }
    
}
