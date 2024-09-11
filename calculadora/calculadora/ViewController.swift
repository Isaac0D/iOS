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
        else if (estadoActual == estadosDeLaCalculadora.escogerOperacion){
            if let _mensajeroId = sender.restorationIdentifier{
                operacionActual = botones_interfaz[_mensajeroId]?.operacion
                estadoActual = estadosDeLaCalculadora.seleccionarNumeros
            }
            else{
                operacionActual = nil
            }
         
        }
        
        dibujarNumerosOperacionInterfaz()
        
       

    }
    
    @IBAction func botonEscogerOperacion(_ sender: UIButton){
        //botonOperacion.setTitle("ñ", for: .normal)
        //print(botonOperacion.titleLabel?.text)
        if(estadoActual == estadosDeLaCalculadora.seleccionarNumeros){
            estadoActual = estadosDeLaCalculadora.escogerOperacion
            dibujarNumerosOperacionInterfaz()
        }
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
                    //print(botones_interfaz[identificador])
                    botones_interfaz[identificador]?.referenciaABotonInterfaz = boton as? UIButton
                }
            }
        }
        
        for elemento in botones_interfaz.values{
            elemento.referenciaABotonInterfaz?.setTitle("ñ", for: .normal)
        }
        
        /*for stackConVista in vistaStack.subviews{
            for boton in stackConVista.subviews{
                print(boton.restorationIdentifier)
            }
        }*/
    }
}
