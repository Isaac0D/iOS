import UIKit


class ViewController: UIViewController {
    var citaParaEnviar: Cita = Cita(quienLoDijo: "Creeper", queDijo: "Tssseñor")
    var citasDisponibles: GeneradorDeCitas = GeneradorDeCitas()

    override func viewDidLoad() {
        citasDisponibles.generarCitasFalsas()
        
        super.viewDidLoad()
        
    }

    
    @IBSegueAction func alAbrirPantallaCitas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(citaParaCitar: citasDisponibles.obtenerCitaAleatoria(), coder: coder)
    }
    
}
