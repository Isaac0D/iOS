import UIKit

class ControladorPantallaDelPost: UIViewController {
    let proveedorPublicaciones = ProveedorDePublicaciones.autoreferencia
    
    public var idPulicacion: Int?
    private var publicacion: Publicacion?

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        
        
        let controlador_de_navegacion = self.navigationController as? mod_navegador_principal
        controlador_de_navegacion?.activar_navigation_bar(actviar: true)
        
        realizarDescargaDeInformacion()
    }
    
    func realizarDescargaDeInformacion(){
        proveedorPublicaciones.obtener_publicacion(id: self.idPulicacion ?? -1,
                que_hacer_al_recibir: {
                [weak self] (publicaciones) in self?.publicacion = publicaciones
                DispatchQueue.main.async {
                    self?.dibujarPublicacion()
                }
            
        })
    }
    
    func dibujarPublicacion(){
        print(publicacion?.body)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
