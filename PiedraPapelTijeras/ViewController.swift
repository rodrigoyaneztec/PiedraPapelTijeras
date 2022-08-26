//
//  ViewController.swift
//  PiedraPapelTijeras
//
//  Created by Rodrigo Alejandro Yáñez García on 18/08/22.
//

import UIKit

class ViewController: UIViewController {

    // Inicializacion de objetos requeridos
    
    let juego = Juego()
    let cpu = CPU()
    
    // Accesibilidad a labels y text fields
    
    @IBOutlet weak var resultadoTextField: UITextField!
    @IBOutlet weak var contadorJugador: UILabel!
    @IBOutlet weak var contadorCPU: UILabel!
    
    // Funcionamiento de botones
    
    @IBAction func botonPiedra(_ sender: UIButton) {
        let (A,B,C) = juego.siguienteJugada(jugador : "PIEDRA", cpu: cpu.generarValor())
        contadorJugador.textColor = UIColor.black
        contadorCPU.textColor = UIColor.black
        
        contadorJugador.text = String(A)
        contadorCPU.text = String(B)
        resultadoTextField.text = String(C)
    }
    
    @IBAction func botonTijeras(_ sender: UIButton) {
        let (A,B,C) = juego.siguienteJugada(jugador : "TIJERAS", cpu: cpu.generarValor())
        contadorJugador.textColor = UIColor.black
        contadorCPU.textColor = UIColor.black
        
        contadorJugador.text = String(A)
        contadorCPU.text = String(B)
        resultadoTextField.text = String(C)
    }
    
    @IBAction func botonPapel(_ sender: UIButton) {
        let (A,B,C) = juego.siguienteJugada(jugador : "PAPEL", cpu: cpu.generarValor())
        contadorJugador.textColor = UIColor.black
        contadorCPU.textColor = UIColor.black
        
        contadorJugador.text = String(A)
        contadorCPU.text = String(B)
        resultadoTextField.text = String(C)
    }
    
    @IBAction func botonReiniciar(_ sender: UIButton) {
        let (A,B,C) = juego.reiniciarJuego()
        contadorJugador.textColor = UIColor.red
        contadorCPU.textColor = UIColor.red
        
        contadorJugador.text = String(A)
        contadorCPU.text = String(B)
        resultadoTextField.text = String(C)
    }
    
}
