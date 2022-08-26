//
//  Juego.swift
//  PiedraPapelTijeras
//
//  Created by Rodrigo Alejandro Yáñez García on 24/08/22.
//

import Foundation

// Clase Util para desarrollar la lógica del juego.

public class Juego {
    
    var contadorJugador = 0
    var contadorCPU = 0
    var mensajeResultado = ""
    
    /// Función para realizar la jugada siguiente.
    /// - Parameters:
    ///   - jugador: Objeto seleccionado por el jugador. Por ejemplo "TIJERAS".
    ///   - cpu: Objeto seleccionado aleatoriamente por la computadora Por ejemplo "PAPEL".
    /// - Returns: Regresa una tupla de 3 elementos: contador actualizado del jugador, contador actualizado del CPU y mensaje que se mostrará en pantalla.
    
    func siguienteJugada (jugador : String, cpu : String) -> (Int, Int, String) {
           
        if (jugador == cpu) {
            mensajeResultado = "¡EMPATE! Juega de nuevo."

        } else if (jugador == "PIEDRA" && cpu == "PAPEL"){
            contadorCPU += 1
            mensajeResultado = "Haz perdido, la CPU puso papel."

        } else if (jugador == "PIEDRA" && cpu == "TIJERAS"){
            contadorJugador += 1
            mensajeResultado = "Haz ganado, la CPU puso tijeras."

        } else if (jugador == "PAPEL" && cpu == "PIEDRA"){
            contadorJugador += 1
            mensajeResultado = "Haz ganado, la CPU puso piedra."

        } else if (jugador == "PAPEL" && cpu == "TIJERAS"){
            contadorCPU += 1
            mensajeResultado = "Haz perdido, la CPU puso tijeras."

        } else if (jugador == "TIJERAS" && cpu == "PAPEL"){
            contadorJugador += 1
            mensajeResultado = "Haz ganado, la CPU puso papel."

        } else if (jugador == "TIJERAS" && cpu == "PIEDRA"){
            contadorCPU += 1
            mensajeResultado = "Haz perdido, la CPU puso piedra."
        } else {
            mensajeResultado = "Error en la aplicacion. Revisar."
        }
        
        return (contadorJugador, contadorCPU, mensajeResultado)
    }
       
    func reiniciarJuego () -> (Int, Int, String) {
        contadorJugador = 0
        contadorCPU = 0
        mensajeResultado = "¡JUEGO NUEVO!"
        
        return (contadorJugador, contadorCPU, mensajeResultado)
    }
    
}
