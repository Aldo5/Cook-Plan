//
//  AddRecipeVC.swift
//  SigleAppPlanCook
//
//  Created by Aldo on 14/12/22.
//

import UIKit

class AddRecipeVC: UIViewController {
    
    var comida: FoodC?
    @IBOutlet var titleField: UITextField!
    @IBOutlet var ingredientsTV: UITextView!
    @IBOutlet var instructionsTV: UITextView!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    init?(coder:NSCoder, foodC: FoodC?){
        self.comida = foodC
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let comida = comida{
            titleField.text =  comida.name
            ingredientsTV.text = comida.ingredientes
            instructionsTV.text = comida.instruciones
            title = "Edit Food"
        }else{
            title = "Add Food"
        }
        //Se llama a la funcion viewDidLoad
        updateSaveButtonState()
    }
        
        //Habilita el boton de guardar solo si los tres campos estan llenos
        
        func updateSaveButtonState() {
            let titleText = titleField.text ?? ""
            //let ingredientsText = ingredientsTV.text ?? ""
           // let instructionsText = instructionsTV.text ?? ""
            saveButton.isEnabled = !titleText.isEmpty
            //saveButton.isEnabled = !titleText.isEmpty && !ingredientsText.isEmpty && !instructionsText.isEmpty
        }
    
    //Este debe conectarse a cada elemento del Root view controller para que verifique que cada campo se llene.
    @IBAction func textEditingChanged(_ sender: UITextField) { updateSaveButtonState() }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "saveUnwind" else { return }
        
        let title = titleField.text!
        let ingre = ingredientsTV.text ?? ""
        let instruc = instructionsTV.text ?? ""
        comida = FoodC(name: title, ingredientes: ingre, instruciones: instruc)
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
