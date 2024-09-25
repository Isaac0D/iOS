//
//  ControladorPantallaCitas.swift
//  boceto1
//
//  Created by alumno on 9/25/24.
//

import UIKit

class ControladorPantallaCitas: UIViewController{
    
    @IBOutlet weak var nombreDeQuienLoDijo: UILabel!
    @IBOutlet weak var queDijoMuroTexto: UILabel!
    
    var citaActual: Cita
    
    required init?(coder: NSCoder) {
    
        self.citaActual = Cita(quienLoDijo: "Desarrollador", queDijo: "Tenemos un problema. Reportalo por una rebanada de pastel")
        super.init(coder: coder)
        print("Error: Se ha cargado el default de INIT")
    }
    
    init?(citaParaCitar: Cita, coder: NSCoder){
        self.citaActual = citaParaCitar
        super.init(coder: coder)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inicializarPantalla()
    }
    
    func inicializarPantalla(){
        nombreDeQuienLoDijo.text = citaActual.nombre
        queDijoMuroTexto.text = citaActual.texto
    }
    
    
    
}

