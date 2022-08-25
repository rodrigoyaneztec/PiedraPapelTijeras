
//  CPU.swift
//  PiedraPapelTijeras
//
//  Created by Rodrigo Alejandro Yáñez García on 25/08/22.
//

import Foundation

public class CPU {
    public let valor : String
    public let contador : Int
    
    public init (valor : String, contador : Int){
        self.valor = valor
        self.contador = contador
    }

    public func generarValor () -> String {
        let opciones = ["PIEDRA", "PAPEL", "TIJERAS"]
        return opciones.randomElement()!
    }
}
