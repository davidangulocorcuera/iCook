//
//  RecipeCell.swift
//  iCook
//
//  Created by Biolizard on 30/11/2018.
//  Copyright © 2018 Biolizard. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {
 @IBOutlet weak var recipe_image:UIImageView!
 @IBOutlet weak var containerView:UIView!
 @IBOutlet weak var lbl_tittle:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        recipe_image?.layer.cornerRadius = 10.0
        recipe_image?.layer.masksToBounds = true
        containerView?.layer.cornerRadius = 8.0

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
