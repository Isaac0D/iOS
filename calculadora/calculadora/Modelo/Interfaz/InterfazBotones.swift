//
//  InterfazBotones.swift
//  calculadora
//
//  Created by alumno on 9/6/24.
//

import Foundation
import UIKit


//Interzar Usuario [Nombre de la clase o estructura]
struct IUBotonCalculadora {
    var referenciaABotonInterfaz: UIButton?
    var numero: Character
    var operacion: String
    
    init(numero: Character, operacion: String) {
        self.referenciaABotonInterfaz = nil
        self.numero = numero
        self.operacion = operacion
    }
    
    static func crearArregloBotones() -> Dictionary<String, IUBotonCalculadora>{
        var botones_interfaz: Dictionary<String,IUBotonCalculadora> = [:]
        
        
        botones_interfaz["boton0"] = IUBotonCalculadora(
            numero: Character("0"),
            operacion: ""
        )
        
        botones_interfaz["boton1"] = IUBotonCalculadora(
            numero: Character("1"),
            operacion: "+"
        )
        
        botones_interfaz["boton2"] = IUBotonCalculadora(
            numero: Character("2"),
            operacion: ""
        )
        
        botones_interfaz["boton3"] = IUBotonCalculadora(
            numero: Character("3"),
            operacion: "-"
        )
        
        botones_interfaz["boton4"] = IUBotonCalculadora(
            numero: Character("4"),
            operacion: ""
        )
        
        botones_interfaz["boton5"] = IUBotonCalculadora(
            numero: Character("5"),
            operacion: ""
        )
        
        botones_interfaz["boton6"] = IUBotonCalculadora(
            numero: Character("6"),
            operacion: ""
        )
        
        botones_interfaz["boton7"] = IUBotonCalculadora(
            numero: Character("7"),
            operacion: "*"
        )
        
        botones_interfaz["boton8"] = IUBotonCalculadora(
            numero: Character("8"),
            operacion: ""
        )
        
        botones_interfaz["boton9"] = IUBotonCalculadora(
            numero: Character("9"),
            operacion: "/"
        )
            
        
        return botones_interfaz
    }
    
}
