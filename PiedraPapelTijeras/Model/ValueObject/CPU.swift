
//  CPU.swift
//  PiedraPapelTijeras
//
//  Created by Rodrigo Alejandro Yáñez García on 25/08/22.
//

import Foundation

// Clase Value Object para realizar el funcionamiento interno de la comutadora.

public class CPU {
    
    /// Función creada para que la computadora seleccione aleatoriamente un valor entre las siguientes opciones "PIEDRA", "PAPEL", "TIJERAS".
    /// - Returns: El valor generado aleatoriamente.
    
    public func generarValor () -> String {
        let opciones = ["PIEDRA", "PAPEL", "TIJERAS"]
        return opciones.randomElement()!
    }
    
}
