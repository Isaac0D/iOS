//
//  ViewController.swift
//  calculadora
//
//  Created by alumno on 8/30/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botonParaInteractuar: UIButton!
    @IBOutlet weak var textiCambiar: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func queHacerPulsarBoton(_ sender: Any) {
        textiCambiar.text = "Bienvenido"
    }
    
    
    
    
    
    
}





