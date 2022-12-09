//
//  ViewController.swift
//  SigleAppPlanCook
//
//  Created by Aldo on 07/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageFood: UIImageView!
    @IBOutlet weak var ingredients: UITextView!
    @IBOutlet weak var instructions: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = food[myIndex]
        imageFood.image = UIImage(named: food[myIndex] + ".jpeg")
        //imageFood.layer.cornerRadius = imageFood.bounds.size.width / 2.0
        ingredients.text = ingred[myIndex]
        ingredients.isEditable = false
        instructions.text = instruc[myIndex]
        instructions.isEditable = false
            }
}

