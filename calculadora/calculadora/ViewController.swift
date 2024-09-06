//
//  ViewController.swift
//  calculadora
//
//  Created by alumno on 8/30/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textiCambiar: UILabel!
    @IBOutlet weak var botonOperacion: UIButton!
    
    var botones_interfaz: Dictionary<String, IUBotonCalculadora> = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inicializarCalculadora()
    }
    
    
    
    
    @IBAction func queHacerPulsarBoton(_ sender: UIButton) {
        let textoAñadir =
        botones_interfaz[(sender.restorationIdentifier ?? botonOperacion.restorationIdentifier) ?? "boton"]?.numero
        textiCambiar.text = "\(textiCambiar.text ?? "")\(textoAñadir!)"
       

    }
    
    func inicializarCalculadora() -> Void{
        crearArregloBotones()
    }
    
    func crearArregloBotones() -> Void{
        for numero in 0...9{
            botones_interfaz["boton\(numero)"] = IUBotonCalculadora(
                    "boton\(numero)",
                    numero: Character("\(numero)"),
                    operacion: ""
            )
            
        }
    }
}
