//
//  Juego.swift
//  PiedraPapelTijeras
//
//  Created by Rodrigo Alejandro Yáñez García on 24/08/22.
//

import Foundation

public class Juego {
    
    let cpu = CPU(valor : "", contador : 0)
    var contadorJugador = 0
    var contadorCPU = 0
    var mensaje = ""
    
    func siguienteJugada (jugador : String) -> (Int, Int, String) {
        
        let valorCPU = cpu.generarValor()
       
        if (jugador == valorCPU) {
            // mandar mensaje de empate
            mensaje = "¡EMPATE! Juega de nuevo."

        } else if (jugador == "PIEDRA" && valorCPU == "PAPEL"){
            contadorCPU += 1
            mensaje = "Haz perdido, la CPU puso papel."

        } else if (jugador == "PIEDRA" && valorCPU == "TIJERAS"){
            contadorJugador += 1
            mensaje = "Haz ganado, la CPU puso tijeras."

        } else if (jugador == "PAPEL" && valorCPU == "PIEDRA"){
            contadorJugador += 1
            mensaje = "Haz ganado, la CPU puso piedra."

        } else if (jugador == "PAPEL" && valorCPU == "TIJERAS"){
            contadorCPU += 1
            mensaje = "Haz perdido, la CPU puso tijeras."

        } else if (jugador == "TIJERAS" && valorCPU == "PAPEL"){
            contadorJugador += 1
            mensaje = "Haz ganado, la CPU puso papel."

        } else {
            // TIJERAS vs PIEDRA
            
            contadorCPU += 1
            mensaje = "Haz perdido, la CPU puso piedra."
        }
        
        return (contadorJugador, contadorCPU, mensaje)
    }
       
    func reiniciarJuego () -> (Int, Int, String) {
        contadorJugador = 0
        contadorCPU = 0
        mensaje = "¡JUEGO NUEVO!"
        
        return (contadorJugador, contadorCPU, mensaje)
    }
    
}
