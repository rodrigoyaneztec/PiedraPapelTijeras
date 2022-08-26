//
//  JuegoTests.swift
//  PiedraPapelTijerasTests
//
//  Created by Rodrigo Alejandro Yáñez García on 24/08/22.
//

import XCTest
@testable import PiedraPapelTijeras

class JuegoTests: XCTestCase {

    func testJugadorGana() throws {
        // GIVEN
        let juego = Juego()
        
        // WHEN
        let (_,_,C) = juego.siguienteJugada(jugador : "PIEDRA", cpu : "TIJERAS")
        let mensajeResultado = String(C)
        
        // THEN
        let mensajeEsperado = "Haz ganado, la CPU puso tijeras."
        XCTAssertEqual(mensajeEsperado, mensajeResultado)
    }
    
    func testCPUGana() throws {
        // GIVEN
        let juego = Juego()
        
        // WHEN
        let (_,_,C) = juego.siguienteJugada(jugador : "PIEDRA", cpu : "PAPEL")
        let mensajeResultado = String(C)
        
        // THEN
        let mensajeEsperado = "Haz perdido, la CPU puso papel."
        XCTAssertEqual(mensajeEsperado, mensajeResultado)
    }
    
    func testEmpate() throws {
        // GIVEN
        let juego = Juego()
        
        // WHEN
        let (_,_,C) = juego.siguienteJugada(jugador : "PAPEL", cpu : "PAPEL")
        let mensajeResultado = String(C)
        
        // THEN
        let mensajeEsperado = "¡EMPATE! Juega de nuevo."
        XCTAssertEqual(mensajeEsperado, mensajeResultado)
    }
    
    func testReiniciarJuego() throws {
        // GIVEN
        let juego = Juego()
        
        // WHEN
        let (A,B,C) = juego.reiniciarJuego()
        let contadorJugador = String(A)
        let contadorCPU = String(B)
        let mensajeResultado = String(C)
        
        // THEN
        let mensajeEsperado = "¡JUEGO NUEVO!"
        XCTAssertEqual(mensajeEsperado, mensajeResultado)
        XCTAssertEqual(contadorJugador, "0")
        XCTAssertEqual(contadorCPU, "0")
        
    }

}
