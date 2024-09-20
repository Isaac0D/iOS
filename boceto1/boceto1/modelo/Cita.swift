import Foundation

struct Cita{
    var nombre: String
    
    var texto: String
    
    init(quienLoDijo: String, queDijo: String){
        nombre = quienLoDijo
        texto = queDijo
    }
}
