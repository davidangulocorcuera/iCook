//
//  RecipeTableViewCell.swift
//  iCook
//
//  Created by Biolizard on 28/11/2018.
//  Copyright © 2018 Biolizard. All rights reserved.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {
     @IBOutlet weak var lbl_tittle:UILabel!
     @IBOutlet weak var lbl_description:UILabel!
     @IBOutlet weak var lbl_numberOfRecipes:UILabel!
     @IBOutlet weak var recipe_image:UIImageView!
     @IBOutlet weak var containerView:UIView!

    override func awakeFromNib() {
        containerView?.layer.cornerRadius = 8.0
        recipe_image?.layer.cornerRadius = 10.0
        recipe_image?.layer.masksToBounds = true
       
        

        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
