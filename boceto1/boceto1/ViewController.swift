import UIKit


class ViewController: UIViewController {
    var citaParaEnviar: Cita = Cita(quienLoDijo: "Creeper", queDijo: "Tssseñor")
    var citasDisponibles: GeneradorDeCitas = GeneradorDeCitas()

    @IBOutlet weak var labelcito: UILabel!
    
    override func viewDidLoad() {
        citasDisponibles.generarCitasFalsas()
        
        super.viewDidLoad()
        
    }
    
    func actualizarCantidad(){
        labelcito.text = String(citasDisponibles.citasCreadas.count)
    }

    
    @IBSegueAction func alAbrirPantallaCitas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(citaParaCitar: citasDisponibles.obtenerCitaAleatoria(), coder: coder)
    }

    
    @IBAction func volverPantallaInicio(segue: UIStoryboardSegue){
        if let pantallaAgregarCitas = segue.source as? ControladorPantallaAgregarCita{
            citasDisponibles.agregarCita(pantallaAgregarCitas.citaCreada!)
        }
        
        /*let pantallaCitas = segue.source as? ControladorPantallaCitas
        print(pantallaCitas?.citaActual.texto)
        
        if let pantallaCitas = segue.source as? ControladorPantallaCitas{
            citasDisponibles.agregarCita(pantallaCitas.citaActual.texto, quienLoDijo: pantallaCitas.citaActual.nombre)
        }
        else{
            print("Eso no era un objeto")
        }*/
        
        actualizarCantidad()
        
    }
    
}
