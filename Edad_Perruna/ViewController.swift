//
//  ViewController.swift
//  Edad_Perruna
//
//  Created by Juan Morillo on 24/7/16.
//  Copyright © 2016 JuanMorillios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let humanYear = 7

  
    @IBOutlet weak var entrarEdadPerroTextField: UITextField!
    @IBOutlet weak var edadDelPerroEsLabel: UILabel!
    @IBOutlet weak var mainContentImageView: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        edadDelPerroEsLabel.text = "Edad de su perro:"
        
    }

    @IBAction func calcAgeDog(_ sender: UIButton) {
        
        
        processedData()
        
        
    }
    
    func processedData(){
    
    
    let valueTextField = Int(entrarEdadPerroTextField.text!)
    
    edadDelPerroEsLabel.text = "La edad de su perro es:\(valueTextField! * humanYear) años"
        
        if mainContentImageView.isHidden {
        
        
           mainContentImageView.isHidden = false
        }
    
    }
    
    @IBAction func infoButtonPressed(_ sender: UIButton) {
        
        alert()
        
    }
    
    func alert(){
    
        let alertViewController = UIAlertController(title: "Calculadora Edad Perruna🐶", message: "App que realiza el cálculo de la edad de un 🐶 comparándola con la edad de una 👱🏿, donde 1 año en la edad de un perro equivale a 7 años de un humano, según dicen.", preferredStyle: .alert)
        
        let OkAction = UIAlertAction(title: "Cerrar", style: .destructive, handler: nil)
        
        alertViewController.addAction(OkAction)
        
        present(alertViewController, animated: true, completion: nil)

        print("\(alertViewController.message)")
    
    }
    

}

