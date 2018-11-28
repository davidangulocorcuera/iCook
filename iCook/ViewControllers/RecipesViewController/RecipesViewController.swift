//
//  RecipesViewController.swift
//  iCook
//
//  Created by Biolizard on 28/11/2018.
//  Copyright © 2018 Biolizard. All rights reserved.
//

import UIKit

class RecipesViewController: UIViewController {
   
    var recipe :Recipe!
    
    convenience init(recipe: Recipe!){
        self.init()
        self.recipe = recipe
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



}
