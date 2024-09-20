import Foundation


class GeneradorDeCitas{
    var citasCreadas: Array<Cita>
    
    init(){
        citasCreadas = []
    }
    
    func agregarCita(_ queDijo: String, quienLoDijo: String){
        var citaGenerada = Cita(quienLoDijo: quienLoDijo, queDijo: queDijo)
        
        citasCreadas.append(citaGenerada)
    }
    
    
}
