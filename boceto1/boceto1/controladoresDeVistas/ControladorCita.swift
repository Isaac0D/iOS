//
//  ControladorCita.swift
//  boceto1
//
//  Created by alumno on 9/25/24.
//

import UIKit

class ControladorVistaCitas: UIViewController{
    @IBOutlet weak var nombreDeQuienLoDijo: UILabel!
    @IBOutlet weak var queDijoQue: UILabel!
    
    var texto: String
    
    required init?(coder: NSCoder) {
        texto = ""
        super.init(coder: coder)

        print("Algo paso por aqui")
    }
    
    init(titulo_secundario: String, coder: NSCoder){
        texto = titulo_secundario
        
        super.init(coder: coder)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Me estoy ejecutando")
        
        nombreDeQuienLoDijo.text = texto
    }
    
}
