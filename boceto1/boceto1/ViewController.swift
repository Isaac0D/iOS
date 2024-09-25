//
//  ViewController.swift
//  boceto1
//
//  Created by alumno on 9/20/24.
//

import UIKit


class ViewController: UIViewController {
    var citaParaEnviar: Cita = Cita(quienLoDijo: "Creeper", queDijo: "Tssseñor")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }

    
    @IBSegueAction func alAbrirPantallaCitas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return
            ControladorPantallaCitas(citaParaCitar: citaParaEnviar, coder: coder)
    }
}

