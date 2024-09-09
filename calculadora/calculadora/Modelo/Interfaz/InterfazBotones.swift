//
//  InterfazBotones.swift
//  calculadora
//
//  Created by alumno on 9/6/24.
//

import Foundation


//Interzar Usuario [Nombre de la clase o estructura]
struct IUBotonCalculadora {
    var id: String
    var numero: Character
    var operacion: String
    
    init(_ id: String, numero: Character, operacion: String) {
        self.id = id
        self.numero = numero
        self.operacion = operacion
    }
    
    static func crearArregloBotones() -> Dictionary<String, IUBotonCalculadora>{
        var botones_interfaz: Dictionary<String,IUBotonCalculadora> = [:]
        
        
        botones_interfaz["boton0"] = IUBotonCalculadora(
            "boton0",
            numero: Character("0"),
            operacion: ""
        )
        
        botones_interfaz["boton1"] = IUBotonCalculadora(
            "boton1",
            numero: Character("1"),
            operacion: "+"
        )
        
        botones_interfaz["boton2"] = IUBotonCalculadora(
            "boton2",
            numero: Character("2"),
            operacion: ""
        )
        
        botones_interfaz["boton3"] = IUBotonCalculadora(
            "boton3",
            numero: Character("3"),
            operacion: "-"
        )
        
        botones_interfaz["boton4"] = IUBotonCalculadora(
            "boton4",
            numero: Character("4"),
            operacion: ""
        )
        
        botones_interfaz["boton5"] = IUBotonCalculadora(
            "boton5",
            numero: Character("5"),
            operacion: ""
        )
        
        botones_interfaz["boton6"] = IUBotonCalculadora(
            "boton6",
            numero: Character("6"),
            operacion: ""
        )
        
        botones_interfaz["boton7"] = IUBotonCalculadora(
            "boton7",
            numero: Character("7"),
            operacion: "*"
        )
        
        botones_interfaz["boton8"] = IUBotonCalculadora(
            "boton8",
            numero: Character("8"),
            operacion: ""
        )
        
        botones_interfaz["boton9"] = IUBotonCalculadora(
            "boton9",
            numero: Character("9"),
            operacion: "/"
        )
            
        
        return botones_interfaz
    }
    
}
