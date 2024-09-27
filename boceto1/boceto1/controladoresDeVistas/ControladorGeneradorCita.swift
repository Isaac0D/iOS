import UIKit

class ControladorPantallaAgregarCita: UIViewController{
    var quienLoDice: String = ""
    var queDice: String = ""
    
    var citaCreada: Cita? = nil
    
    @IBOutlet weak var quienLoDijoView: UITextField!
    @IBOutlet weak var queEsLoQueDijoView: UITextField!
    
    @IBAction func agregarCitaNueva(_ sender: UIButton) {
        citaCreada = Cita(quienLoDijo: quienLoDijoView.text!, queDijo: queEsLoQueDijoView.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
