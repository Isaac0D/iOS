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
    
    func generarCitasFalsas(){
        self.agregarCita("En las sombras, donde la oscuridad es mi única compañera, guardo un secreto explosivo. Un poder que podría cambiar el mundo, si tan solo tuviera el valor de liberarlo",
                     quienLoDijo: "Creeper"
        )
        
        self.agregarCita("¡La vida es corta, ¡explota al máximo!",
                          quienLoDijo: "Creeper"
        )
        
        self.agregarCita("GRrrrrr grrr grrr GRRRRR grrrgGRGRh",
                          quienLoDijo: "Zombie"
        )
        
        self.agregarCita("Solia ser un explorador como tu... Pero me dieron con una flecha en la rodilla",
                          quienLoDijo: "Guardia"
        )
    }
    
    func obtenerCitaAleatoria() -> Cita{
        var citaParaRegresar : Cita
        citaParaRegresar = citasCreadas[Int.random(in: 0...citasCreadas.count-1)]

        return citaParaRegresar
        
    }
    
    
}
