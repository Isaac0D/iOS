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
    
    @IBOutlet weak var vistaStack: UIStackView!
    
    
    var botones_interfaz: Dictionary<String, IUBotonCalculadora> = [:]
    var operacionActual: String? = nil
    var numeroAnterior: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inicializarCalculadora()
    }
    
    
    
    
    @IBAction func queHacerPulsarBoton(_ sender: UIButton) {
        if(estadoActual == estadosDeLaCalculadora.seleccionarNumeros){
            if let _mensajeroId = sender.restorationIdentifier{
                let textoCache = botones_interfaz[_mensajeroId]?.numero
                textiCambiar.text = "\(textiCambiar.text ?? "")\(textoCache!)"
            }
        }
        
        else if(estadoActual == estadosDeLaCalculadora.mostrarResultado){
            if let _mensajeroId = sender.restorationIdentifier{
                let textoCache = botones_interfaz[_mensajeroId]?.numero
                textiCambiar.text = "\(textoCache!)"
                estadoActual = estadosDeLaCalculadora.seleccionarNumeros
            }
        }
        
        else if (estadoActual == estadosDeLaCalculadora.escogerOperacion){
            if let _mensajeroId = sender.restorationIdentifier{
                
                operacionActual = botones_interfaz[_mensajeroId]?.operacion
                
                if let numeroActual: String = textiCambiar.text{
                    numeroAnterior = Double(numeroActual) ?? 0.0
                }
                
                textiCambiar.text = ""
                estadoActual = estadosDeLaCalculadora.seleccionarNumeros
            }
            else{
                operacionActual = nil
            }
         
        }
        
        dibujarNumerosOperacionInterfaz()
        
       

    }
    
    @IBAction func botonEscogerOperacion(_ sender: UIButton){
        if(estadoActual == estadosDeLaCalculadora.seleccionarNumeros){
            estadoActual = estadosDeLaCalculadora.escogerOperacion
            
        }else if(estadoActual == estadosDeLaCalculadora.escogerOperacion){
            estadoActual = estadosDeLaCalculadora.seleccionarNumeros
        }
        dibujarNumerosOperacionInterfaz()
    }
    
    func inicializarCalculadora() -> Void{
        crearArregloBotones()
        identificarBotones()
    }
    
    func crearArregloBotones() -> Void{
        botones_interfaz = IUBotonCalculadora.crearArregloBotones()
    }
    
    func dibujarNumerosOperacionInterfaz(){
        if(estadoActual == estadosDeLaCalculadora.escogerOperacion){
            for elemento in botones_interfaz.values{
                elemento.referenciaABotonInterfaz?.setTitle(elemento.operacion, for: .normal)
            }
            
        }
        else if(estadoActual == estadosDeLaCalculadora.seleccionarNumeros){
            for elemento in botones_interfaz.values{
                elemento.referenciaABotonInterfaz?.setTitle(String(elemento.numero), for: .normal)
            }
        }
    }
    
    func identificarBotones(){
        
        for pilaDeComponentes in vistaStack.subviews{
            for boton in pilaDeComponentes.subviews{
                if let identificador = boton.restorationIdentifier{
                    botones_interfaz[identificador]?.referenciaABotonInterfaz = boton as? UIButton
                }
            }
        }
        
        
    }
    
    
    @IBAction func obtenerResultado(_ sender: Any) {
        if numeroAnterior != 0.0 && textiCambiar.text != ""{
            var numeroActual: Double = 0.0
            if let numeroActualString = textiCambiar.text{
                numeroActual = Double(numeroActualString) ?? 0.0
            }
            
            switch(operacionActual){
                
            case "+":
                textiCambiar.text = "\(numeroAnterior + numeroActual)"
                
            case "-":
                textiCambiar.text = "\(numeroAnterior - numeroActual)"
            
            case "*":
                textiCambiar.text = "\(numeroAnterior * numeroActual)"
                
            case "/":
                textiCambiar.text = "\(numeroAnterior / numeroActual)"
                
            default:
                textiCambiar.text = "Error"
            }
            
            estadoActual = estadosDeLaCalculadora.mostrarResultado
        }
    }
}
