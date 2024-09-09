//
//  ViewController.swift
//  calculadora
//
//  Created by alumno on 8/30/24.
//

import UIKit

enum estadosDeLaCalculadora{
    case seleccionarNumeros
    case escogerOperacion
    case mostrarResultado
}

class ViewController: UIViewController {
    var estadoActual: estadosDeLaCalculadora = estadosDeLaCalculadora.seleccionarNumeros
    
    @IBOutlet weak var textiCambiar: UILabel!
    @IBOutlet weak var botonOperacion: UIButton!
    
    var botones_interfaz: Dictionary<String, IUBotonCalculadora> = [:]
    var operacionActual: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inicializarCalculadora()
    }
    
    
    
    
    @IBAction func queHacerPulsarBoton(_ sender: UIButton) {
        if(estadoActual == estadosDeLaCalculadora.seleccionarNumeros){
            let textoAñadir =
            botones_interfaz[(sender.restorationIdentifier ?? botonOperacion.restorationIdentifier) ?? "boton"]?.numero
            textiCambiar.text = "\(textiCambiar.text ?? "")\(textoAñadir!)"
        }
        else if (estadoActual == estadosDeLaCalculadora.escogerOperacion){
            if let _mensajero: UIButton? = sender{
                operacionActual = botones_interfaz[_mensajero!.restorationIdentifier ?? "boton0"]?.operacion
            }
            else{
                operacionActual = nil
            }
         
        }
        
       

    }
    
    @IBAction func botonEscogerOperacion(_ sender: UIButton){
        if(estadoActual == estadosDeLaCalculadora.seleccionarNumeros){
            estadoActual = estadosDeLaCalculadora.escogerOperacion
            dibujarNumerosOperacionInterfaz()
        }
    }
    
    func inicializarCalculadora() -> Void{
        crearArregloBotones()
    }
    
    func crearArregloBotones() -> Void{
        botones_interfaz = IUBotonCalculadora.crearArregloBotones(  )
    }
    
    func dibujarNumerosOperacionInterfaz(){
        if(estadoActual == estadosDeLaCalculadora.escogerOperacion){
            
        }
        else if(estadoActual == estadosDeLaCalculadora.seleccionarNumeros){
            
        }
    }
}
