//
//  RecipeDetailViewController.swift
//  iCook
//
//  Created by Biolizard on 30/11/2018.
//  Copyright © 2018 Biolizard. All rights reserved.
//

import UIKit
import MapKit
class RecipeDetailViewController: UIViewController {
    var recipe: Recipe!
    @IBOutlet weak var mapView: MKMapView!
    internal var locationToShow: CLLocation?
    @IBOutlet weak var recipe_image:UIImageView!
    @IBOutlet weak var lbl_difficulty:UILabel!
    @IBOutlet weak var lbl_description:UILabel!
    @IBOutlet weak var lbl_ingredients:UILabel!
    @IBOutlet weak var lbl_steps:UILabel!
    @IBOutlet weak var lbl_place:UILabel!
    @IBOutlet weak var background_image:UIImageView!
     var ingredients: String!
    convenience init(recipe: Recipe!){
        self.init()
        self.recipe = recipe
        self.locationToShow = CLLocation(latitude: recipe.place.lat, longitude: recipe.place.lng)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = recipe.name
        setLabels()
        styleImage()
        recipe_image.sd_setImage(with: URL(string: recipe.url_image), completed: nil)
        background_image.sd_setImage(with: URL(string: "https://i.pinimg.com/originals/50/f1/6f/50f16f897ca4baff5d3863ac738d94e5.jpg"), completed: nil)
        /*mapView?.layer.cornerRadius = 10.0
        mapView?.layer.masksToBounds = true*/
        
        mapView?.layer.cornerRadius = (mapView?.frame.height)! / 2
        mapView?.layer.masksToBounds = true
        mapView.layer.borderWidth = 2
        lbl_steps.adjustsFontSizeToFitWidth = true
        mapView.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255, alpha: 1).cgColor
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = (locationToShow?.coordinate)!
        mapView.addAnnotation(annotation)
        
        let region = MKCoordinateRegion(center: ((locationToShow?.coordinate)!), latitudinalMeters: 1000000, longitudinalMeters: 1000000)
        mapView.setRegion(region, animated: false)

        // Do any additional setup after loading the view.
    }
    func setLabels() {
        lbl_difficulty.text = "Dificultad: " + recipe.difficulty
       
        lbl_ingredients.text  = "Ingredientes: " + recipe.ingredients.joined(separator: ",")
        lbl_description.text = recipe.description
        lbl_steps.text = "Pasos a seguir: " + recipe.steps
        lbl_place.text = "Típico en: " + recipe.place.city
       
        
        
    }
    func styleImage() {
        recipe_image.layer.cornerRadius = (recipe_image?.frame.height)! / 3
        recipe_image.layer.masksToBounds = true
        recipe_image.layer.borderWidth = 2
        recipe_image.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255, alpha: 1).cgColor
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
