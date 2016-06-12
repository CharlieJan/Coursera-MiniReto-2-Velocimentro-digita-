//: Playground - noun: a place where people can play

import UIKit

//Declarando una enumeración.
enum Velocidades : Int{
    case
        Apagado             = 0
        , VelocidadBaja     = 20
        , VelocidadMedia    = 50
        , VelocidadAlta     = 120
    
    init(velocidadInicial:Velocidades){
        self = velocidadInicial
    }
}

// Declaración de la clase auto.
class Auto{
    
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    // Realiza el cambio de velocidad, retorna una tupla de velocidad actual y la descripción de la velocidad
    func cambioDeVelocidad() ->(actual:Int, velociadEnCadena: String){
        var velocidadDesc : String
        switch(velocidad){
        case .Apagado:
            velocidad = .VelocidadBaja
            velocidadDesc = "Velocidad baja"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            velocidadDesc = "Velocidad media"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            velocidadDesc = "Velociad alta"
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            velocidadDesc = "Velociad media"
        }
        
        return (velocidad.rawValue, velocidadDesc)
    }
}

// PRUEBAS ***********************************************************

var auto : Auto = Auto()

print(auto.velocidad.rawValue, ",", auto.velocidad)

for v in 1...20{
    // Imprimiendo el resultado de la función.
    var cambioVel = auto.cambioDeVelocidad()
    print(cambioVel.actual, ",", cambioVel.velociadEnCadena)
}

